import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:http/http.dart' as http;

import '../../../models/response_handler_model.dart';
import '../../../utilities/constants/constatnts.dart';
import '../api configration/configrations.dart';

class HttpHelper {
  //Post
  static Future<ResponseHandlerClass> postData({
    required String functionName,
    required String path,
    Map<String, dynamic>? body,
    required String token,
  }) async {
    log(ApiConfigration.baseUrl + path);
    try {
      Map<String, String> headers = {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $token',
        'Prefer': 'return=representation'
      };
      var response = await http
          .post(
            Uri.parse(ApiConfigration.baseUrl + path),
            body: jsonEncode(body ?? {}),
            headers: headers,
          )
          .timeout(const Duration(seconds: 60));
      log("========== $functionName statusCode : ${response.statusCode} ========");
      log("========== $functionName response : ${jsonDecode(response.body)} ========");
      if (response.statusCode == 200 ||
          response.statusCode == 201 ||
          response.statusCode == 204) {
        return ResponseHandlerClass(
          errorMessage: "Success",
          values: jsonDecode(response.body),
        );
      } else {
        log('send but filed Exception');
        return ResponseHandlerClass(
          errorFlag: true,
          errorMessage: Constants.somethingWentWrong,
        );
      }
    } on TimeoutException {
      log('Time out Exception');
      return ResponseHandlerClass(
        errorFlag: true,
        errorMessage: Constants.timeoutException,
      );
    } on SocketException {
      log('Socket Exception');
      return ResponseHandlerClass(
        errorFlag: true,
        errorMessage: Constants.internetConnectionException,
      );
    } catch (e) {
      log(' ========== http post Data $path throw Exeption : $e ==========');
      return ResponseHandlerClass(
        errorFlag: true,
        errorMessage: Constants.somethingWentWrong,
      );
    }
  }

  //Get
  static Future<ResponseHandlerClass> getData({
    required String functionName,
    required String path,
    required String token,
  }) async {
    try {
      Map<String, String> headers = {
        'Accept': 'application/json',
        'Authorization': 'Bearer $token',
        'Prefer':
            'odata.include-annotations=OData.Community.Display.V1.FormattedValue'
      };
      var response = await http
          .get(
            Uri.parse(ApiConfigration.baseUrl + path),
            headers: headers,
          )
          .timeout(const Duration(seconds: 60));
      log("========== $functionName statusCode : ${response.statusCode} ========");
      log("========== $functionName response : ${jsonDecode(response.body)} ========");
      if (response.statusCode == 200 ||
          response.statusCode == 201 ||
          response.statusCode == 204) {
        return ResponseHandlerClass(
          errorMessage: "Success",
          values: jsonDecode(response.body),
        );
      } else {
        log('send but filed Exception');
        return ResponseHandlerClass(
          errorFlag: true,
          errorMessage: Constants.somethingWentWrong,
        );
      }
    } on TimeoutException {
      log('Time out Exception');
      return ResponseHandlerClass(
        errorFlag: true,
        errorMessage: Constants.timeoutException,
      );
    } on SocketException {
      log('Socket Exception');
      return ResponseHandlerClass(
        errorFlag: true,
        errorMessage: Constants.internetConnectionException,
      );
    } catch (e) {
      log(' ========== http get Data $functionName throw Exeption : $e ==========');
      return ResponseHandlerClass(
        errorFlag: true,
        errorMessage: Constants.somethingWentWrong,
      );
    }
  }

  //Put
  static Future<ResponseHandlerClass> putData({
    required String functionName,
    required String path,
    Map<String, dynamic>? body,
    required String token,
  }) async {
    try {
      Map<String, String> headers = {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $token',
        "Prefer": "return=representation"
      };
      var response = await http
          .put(
            Uri.parse(ApiConfigration.baseUrl + path),
            body: jsonEncode(body),
            headers: headers,
          )
          .timeout(const Duration(seconds: 60));
      log("========== $functionName statusCode : ${response.statusCode} ========");
      log("========== $functionName response : ${jsonDecode(response.body)} ========");
      if (response.statusCode == 200 ||
          response.statusCode == 201 ||
          response.statusCode == 204) {
        return ResponseHandlerClass(
          errorMessage: "Success",
          values: jsonDecode(response.body),
        );
      } else {
        log('send but filed Exception');
        return ResponseHandlerClass(
          errorFlag: true,
          errorMessage: Constants.somethingWentWrong,
        );
      }
    } on TimeoutException {
      log('Time out Exception');
      return ResponseHandlerClass(
        errorFlag: true,
        errorMessage: Constants.timeoutException,
      );
    } on SocketException {
      log('Socket Exception');
      return ResponseHandlerClass(
        errorFlag: true,
        errorMessage: Constants.internetConnectionException,
      );
    } catch (e) {
      log(' ========== http put Data $path throw Exeption : $e ==========');
      return ResponseHandlerClass(
        errorFlag: true,
        errorMessage: Constants.somethingWentWrong,
      );
    }
  }

  //Patch
  static patchData({
    required String functionName,
    required String path,
    required Map<String, dynamic> body,
    required String token,
  }) async {
    try {
      Map<String, String> headers = {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $token',
        "Prefer": "return=representation"
      };
      var response = await http
          .patch(
            Uri.parse(ApiConfigration.baseUrl + path),
            body: jsonEncode(body),
            headers: headers,
          )
          .timeout(const Duration(seconds: 60));
      log("========== $functionName statusCode : ${response.statusCode} ========");
      log("========== $functionName response : ${jsonDecode(response.body)} ========");
      if (response.statusCode == 200 ||
          response.statusCode == 201 ||
          response.statusCode == 204) {
        return ResponseHandlerClass(
          errorMessage: "Success",
          values: jsonDecode(response.body),
        );
      } else {
        log('send but filed Exception');
        return ResponseHandlerClass(
          errorFlag: true,
          errorMessage: Constants.somethingWentWrong,
        );
      }
    } on TimeoutException {
      log('Time out Exception');
      return ResponseHandlerClass(
        errorFlag: true,
        errorMessage: Constants.timeoutException,
      );
    } on SocketException {
      log('Socket Exception');
      return ResponseHandlerClass(
        errorFlag: true,
        errorMessage: Constants.internetConnectionException,
      );
    } catch (e) {
      log(' ========== http patch Data $path throw Exeption : $e ==========');
      return ResponseHandlerClass(
        errorFlag: true,
        errorMessage: Constants.somethingWentWrong,
      );
    }
  }

  //Delete
  static deleteData({
    required String functionName,
    required String path,
    required String token,
    String? errorTitle,
  }) async {
    try {
      Map<String, String> headers = {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $token',
        "Prefer": "return=representation"
      };
      var response = await http
          .delete(
            Uri.parse(ApiConfigration.baseUrl + path),
            headers: headers,
          )
          .timeout(const Duration(seconds: 60));
      log("========== $functionName statusCode : ${response.statusCode} ========");
      log("========== $functionName response : ${jsonDecode(response.body)} ========");
      if (response.statusCode == 200 ||
          response.statusCode == 201 ||
          response.statusCode == 204) {
        return ResponseHandlerClass(
          errorMessage: "Success",
          values: jsonDecode(response.body),
        );
      } else {
        log('send but filed Exception');
        return ResponseHandlerClass(
          errorFlag: true,
          errorMessage: Constants.somethingWentWrong,
        );
      }
    } on TimeoutException {
      log('Time out Exception');
      return ResponseHandlerClass(
        errorFlag: true,
        errorMessage: Constants.timeoutException,
      );
    } on SocketException {
      log('Socket Exception');
      return ResponseHandlerClass(
        errorFlag: true,
        errorMessage: Constants.internetConnectionException,
      );
    } catch (e) {
      log(' ========== http delete Data $path throw Exeption : $e ==========');
      return ResponseHandlerClass(
        errorFlag: true,
        errorMessage: Constants.somethingWentWrong,
      );
    }
  }
}
