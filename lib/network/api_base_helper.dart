import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http_interceptor/http_interceptor.dart';
import 'package:quickwiz_app/Network/api_links.dart';
import 'package:quickwiz_app/Network/app_exceptions.dart';
import 'package:quickwiz_app/utils/constants/app_constants.dart';
import 'package:quickwiz_app/utils/helper_functions.dart';

class ApiBaseHelper {
  static final httpClient = InterceptedClient.build(
    client: http.Client(),
    interceptors: [],
  );

  static Future<dynamic> postRequestWithoutBody(
      {required String endPoint}) async {
    http.Response response;
    try {
      response = await httpClient.post(
          (Uri.parse('${ApiLinks.apiBaseURL}$endPoint')),
          headers: {"Content-Type": "application/json"});
    } on SocketException {
      throw FetchDataException(OtherConstants.noInternetMsg);
    } on FormatException {
      throw FetchDataException(OtherConstants.badResponseFormat);
    } on TimeoutException {
      throw FetchDataException(OtherConstants.slowInternetMsg);
    } catch (_) {
      throw FetchDataException(OtherConstants.exceptionMessage);
    }
    return _returnResponse(response);
  }

  static Future<dynamic> genericGetRequest({
    required String endPoint,
    required String base,
    Map<String, dynamic>? params,
    bool returnByteData = false,
  }) async {
    http.Response response;
    try {
      response = await httpClient.get(
        Uri.parse('$base$endPoint'),
        params: params,
      );
    } on SocketException {
      throw FetchDataException(OtherConstants.noInternetMsg);
    } on FormatException {
      throw FetchDataException(OtherConstants.badResponseFormat);
    } on TimeoutException {
      throw FetchDataException(OtherConstants.slowInternetMsg);
    } catch (_) {
      throw FetchDataException(OtherConstants.exceptionMessage);
    }
    return _returnResponse(response, returnBytes: returnByteData);
  }

  static Future<dynamic> httpPostRequestWithoutToken(
      {String? endPoint,
      Object? body,
      String base = ApiLinks.apiBaseURL}) async {
    http.Response response;
    try {
      response = await httpClient
          .post(Uri.parse('$base$endPoint'), body: jsonEncode(body), headers: {
        'Content-type': 'application/json',
        'Accept': 'application/json',
      });
    } on SocketException {
      throw FetchDataException(OtherConstants.noInternetMsg);
    } on FormatException {
      throw FetchDataException(OtherConstants.badResponseFormat);
    } on TimeoutException {
      throw FetchDataException(OtherConstants.slowInternetMsg);
    } catch (_) {
      throw FetchDataException(OtherConstants.exceptionMessage);
    }
    return _returnResponse(response);
  }

  static Future<dynamic> httpGetRequest(
    String endPoint, {
    String base = ApiLinks.apiBaseURL,
    bool returnByteData = false,
    bool translation = true,
  }) async {
    http.Response response;
    try {
      // String language = Provider.of<LocaleProvider>(
      //         AppNavigation.currentContext,
      //         listen: false)
      //     .currentLanguage;
      response = await httpClient.get(Uri.parse('$base$endPoint'), headers: {
        'Content-type': 'application/json',
        'Accept': 'application/json',
        if (translation) 'Accept-Language': 'en-US',
      });
    } on SocketException {
      throw FetchDataException(OtherConstants.noInternetMsg);
    } on FormatException {
      throw FetchDataException(OtherConstants.badResponseFormat);
    } on TimeoutException {
      throw FetchDataException(OtherConstants.slowInternetMsg);
    } catch (_) {
      throw FetchDataException(OtherConstants.exceptionMessage);
    }
    return _returnResponse(response, returnBytes: returnByteData);
  }

  static Future<dynamic> httpPostRequest(
    String endPoint, {
    Object? body,
    String base = ApiLinks.apiBaseURL,
  }) async {
    http.Response response;
    try {
      // String userId = await HelperFunction.getUserId;
      response = await httpClient.post(
        Uri.parse('$base$endPoint'),
        body: jsonEncode(body),
        headers: {
          'Content-type': 'application/json; charset=utf-8',
          'Accept': 'application/json',
          'Accept-Language': 'en-US',
          // if (authorized) 'userId': userId,
        },
      );
    } on SocketException {
      throw FetchDataException(OtherConstants.noInternetMsg);
    } on FormatException {
      throw FetchDataException(OtherConstants.badResponseFormat);
    } on TimeoutException {
      throw FetchDataException(OtherConstants.slowInternetMsg);
    } catch (_) {
      debugPrint('body ${json.encode(body)}');
      throw FetchDataException(OtherConstants.exceptionMessage);
    }
    // print('Body: ${json.encode(body)}');
    // print('Response: ${json.encode(response)}');
    return _returnResponse(response);
  }

  static Future<dynamic> httpPutRequest(String endPoint,
      {Object? body, String base = ApiLinks.apiBaseURL}) async {
    http.Response response;
    try {
      response = await httpClient
          .put(Uri.parse('$base$endPoint'), body: jsonEncode(body), headers: {
        'Content-type': 'application/json',
        'Accept': 'application/json',
      });
    } on SocketException {
      throw FetchDataException(OtherConstants.noInternetMsg);
    } on FormatException {
      throw FetchDataException(OtherConstants.badResponseFormat);
    } on TimeoutException {
      throw FetchDataException(OtherConstants.slowInternetMsg);
    } catch (_) {
      throw FetchDataException(OtherConstants.exceptionMessage);
    }
    return _returnResponse(response);
  }

  static Future<dynamic> httpPatchRequest(String endPoint, Object body) async {
    http.Response response;
    try {
      response = await httpClient.patch(
          Uri.parse('${ApiLinks.apiBaseURL}$endPoint'),
          body: jsonEncode(body),
          headers: {
            'Content-type': 'application/json',
            'Accept': 'application/json'
          });
    } on SocketException {
      throw FetchDataException(OtherConstants.noInternetMsg);
    } on FormatException {
      throw FetchDataException(OtherConstants.badResponseFormat);
    } on TimeoutException {
      throw FetchDataException(OtherConstants.slowInternetMsg);
    } catch (_) {
      throw FetchDataException(OtherConstants.exceptionMessage);
    }
    return _returnResponse(response);
  }

  static Future<dynamic> httpDeleteRequest(String endPoint,
      {Object? body}) async {
    http.Response response;
    try {
      response = await httpClient.delete(
          Uri.parse('${ApiLinks.apiBaseURL}$endPoint'),
          body: jsonEncode(body),
          headers: {
            'Content-type': 'application/json',
            'Accept': 'application/json',
          });
    } on SocketException {
      throw FetchDataException(OtherConstants.noInternetMsg);
    } on FormatException {
      throw FetchDataException(OtherConstants.badResponseFormat);
    } on TimeoutException {
      throw FetchDataException(OtherConstants.slowInternetMsg);
    } catch (_) {
      throw FetchDataException(OtherConstants.exceptionMessage);
    }
    return _returnResponse(response);
  }

  static Future<dynamic> httpMultiPartRequest(String endPoint,
      {required Map<String, String> fields,
      http.MultipartFile? file,
      String base = ApiLinks.apiBaseURL}) async {
    http.Response response;
    try {
      var request = http.MultipartRequest('POST', Uri.parse('$base$endPoint'));
      request.headers.addAll({
        'Content-type': 'multipart/form-data',
        'Accept': 'application/json',
      });
      request.files.add(file!);
      request.fields.addAll(fields);
      response = await http.Response.fromStream(await request.send());
    } on SocketException {
      throw FetchDataException(OtherConstants.noInternetMsg);
    } on FormatException {
      throw FetchDataException(OtherConstants.badResponseFormat);
    } on TimeoutException {
      throw FetchDataException(OtherConstants.slowInternetMsg);
    } catch (ex) {
      throw FetchDataException(OtherConstants.exceptionMessage);
    }
    if (response.statusCode == 401) {
      // await HelperFunction.refreshToken();
    }
    return _returnResponse(response);
  }
}

dynamic _returnResponse(http.Response response, {bool returnBytes = false}) {
  final jsonResponse = returnBytes && response.statusCode == 200
      ? response.bodyBytes
      : jsonDecode(response.body);
  String message = HelperFunction.utf8TextParsing(jsonResponse['message'])!;
  if (message.isEmpty) {
    message = OtherConstants.exceptionMessage;
  }
  switch (response.statusCode) {
    case 200:
      return jsonResponse;
    case 400:
      throw BadRequestException(message);
    case 401:
      throw InvalidInputException(message);
    case 403:
      throw UnauthorisedException(message);
    case 404:
      throw FetchDataException(message);
    case 500:
    default:
      throw FetchDataException(message);
  }
}

// class ExpiredTokenRetryPolicy extends RetryPolicy {
//   @override
//   Future<bool> shouldAttemptRetryOnResponse(ResponseData response) async {
//     String token = await HelperFunction.getApiToken;
//     if (response.statusCode == 401 && token.isNotEmpty) {
//       await HelperFunction.refreshToken();
//       return true;
//     }
//     return false;
//   }
// }

// class AuthorizationInterceptor implements InterceptorContract {
//   @override
//   Future<RequestData> interceptRequest({required RequestData data}) async {
//     try {
//       // String token = await HelperFunction.getApiToken;
//       data.headers['authorization'] = 'Bearer $token';
//       data.headers['content-type'] = 'application/json';
//     } catch (e) {
//       throw '$e';
//     }
//     return data;
//   }

//   @override
//   Future<ResponseData> interceptResponse({required ResponseData data}) async {
//     return data;
//   }
// }
