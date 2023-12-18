import 'package:property_launch_app/data/apis/outh_api.dart';
import 'package:property_launch_app/data/network/api%20configration/end_points.dart';
import 'package:property_launch_app/data/network/shared_preferences/cash_helper.dart';
import 'package:property_launch_app/models/response_handler_model.dart';
import 'package:property_launch_app/utilities/constants/chash_keys.dart';

import '../network/http_helper/http_helper.dart';

class LaunchCampaignsApi {
  //================================ get Sick Leaves Balance ==========================================
  static Future<ResponseHandlerClass> getAllCampaigns() async {
    //refresh token
    if (OuthAPI.accessTokenExpired()) {
      await OuthAPI.refreshTokenWithToken();
    }
    return await HttpHelper.getData(
      functionName: "getAllCampaigns",
      path: "${EndPoints.blserLaunchcampaigns}"
          "?\$filter=blser_campaignstatus eq 550220002 or blser_campaignstatus eq 550220003 or blser_campaignstatus eq 550220004",
      token: ChashHelper.get(key: CasheKeys.accessToken),
    );
  }
}
