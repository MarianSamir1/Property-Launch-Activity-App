import 'dart:developer';
import 'package:aad_oauth/aad_oauth.dart';
import 'package:property_launch_app/utilities/constants/chash_keys.dart';
import 'package:property_launch_app/utilities/constants/constatnts.dart';
import '../../models/response_handler_model.dart';
import '../network/api configration/configrations.dart';
import '../network/shared_preferences/cash_helper.dart';

class OuthAPI {
  static final AadOAuth oauth = AadOAuth(ApiConfigration.config);

  static Future<ResponseHandlerClass> loginWithMicrosoft() async {
    try {
      await oauth.login().catchError((error) {
        log(" ============ oauth error >>> $error ============ ");
        throw error;
      });
      final token = await oauth.getAccessToken();
      if (token != null) {
        log("========= token is : $token ==========");
        //save access token
        ChashHelper.saveData(key: CasheKeys.accessToken, value: token);

        //get access token expire time and save this time
        var expireTime = DateTime.now().add(const Duration(minutes: 40));
        ChashHelper.saveData(
            key: CasheKeys.expireTime, value: expireTime.toString());

        return ResponseHandlerClass(
            errorFlag: false, errorMessage: "Login Successfully");
      }
      return ResponseHandlerClass(
          errorMessage: Constants.somethingWentWrong, errorFlag: true);
    } catch (e) {
      log('Outh API e => $e');
      return ResponseHandlerClass(errorMessage: '$e', errorFlag: true);
    }
  }

  static bool accessTokenExpired() {
    return ChashHelper.get(key: CasheKeys.expireTime) == null
        ? true
        : DateTime.now().isAfter(
            DateTime.parse(ChashHelper.get(key: CasheKeys.expireTime)!));
  }

  static Future<void> refreshTokenWithToken() async {
    await OuthAPI.oauth.login(refreshIfAvailable: true);
    //save access token
    log(" ============ refresh token : ${await OuthAPI.oauth.getAccessToken()} ============ ");
    ChashHelper.saveData(
        key: CasheKeys.accessToken,
        value: await OuthAPI.oauth.getAccessToken());

    //get access token expire time and save this time
    var expireTime = DateTime.now().add(const Duration(minutes: 40));
    ChashHelper.saveData(
        key: CasheKeys.expireTime, value: expireTime.toString());
  }

  static Future<void> logOutFunction() async {
    await oauth.logout();
    ChashHelper.clearData();
  }
}
//  static Future<ResponseHandlerClass> addDummyRecord() async {
//     if (OuthAPI.accessTokenExpired()) {
//       //refresh token
//       await OuthAPI.refreshTokenWithToken();
//     }
//     return await HttpHelper.postData(
//       functionName: "addDummyRecord",
//       path: EndPoints.newActivitylogins,
//       token: ChashHelper.get(key: CasheKeys.accessToken),
//     );
//   }
