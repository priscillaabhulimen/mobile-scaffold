import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

import '../../../utils/constants.dart';

class ApiHelpers {
  ApiHelpers._();

  static makeGetRequest(
    String url, {
    Map<String, String>? headers,
  }) async {
    var uri = Uri.parse(url);
    var resp = {};
    try {
      http.Response response = await http
          .get(
            uri,
            headers: headers ?? {},
          )
          .timeout(const Duration(milliseconds: HayftConstants.connectTimeout));
      if (kDebugMode) {
        log(response.body);
      }
      if (response.statusCode < 200 || response.statusCode > 226) {
        resp = json.decode(response.body);
      } else {
        resp = json.decode(response.body);
      }
    } on SocketException catch (e) {
      resp = {
        'status': false,
        'data': {},
        'message': "No internet connection",
      };
    } on FormatException catch (e) {
      resp = {
        'status': false,
        'data': {},
        'message': "Invalid response format",
      };
    } on TimeoutException catch (e) {
      resp = {
        'status': false,
        'data': {},
        'message': "Connection timed out. Please try again later.",
      };
    } on Exception catch (e) {
      resp = {
        'status': false,
        'data': {},
        'message': "Something went wrong. Please try again later.",
      };
    } catch (e) {
      resp = {
        'status': false,
        'data': {},
        'message': "Something went wrong. Please try again later.",
      };
    }
    return resp;
  }

  static Future makePostRequest(String url, Map payload,
      {Map<String, String>? headers}) async {
    var uri = Uri.parse(url);

    var resp = {};

    //log('Sending $payload to $url');
    try {
      http.Response response = await http
          .post(
            uri,
            body: payload,
            headers: headers ?? {},
          )
          .timeout(const Duration(milliseconds: HayftConstants.connectTimeout));

      // log(response.body);
      if (response.statusCode < 200 || response.statusCode > 226) {
        resp = json.decode(response.body);
      } else {
        resp = json.decode(response.body);
      }
    } on SocketException catch (e) {
      resp = {
        'status': false,
        'data': {},
        'message': "No internet connection",
      };
    } on FormatException catch (e) {
      resp = {
        'status': false,
        'data': {},
        'message': "Invalid response format",
      };
    } on TimeoutException catch (e) {
      resp = {
        'status': false,
        'data': {},
        'message': "Connection timed out. Please try again later.",
      };
    } on Exception catch (e) {
      resp = {
        'status': false,
        'data': {},
        'message': "Something went wrong. Please try again later.",
      };
    } catch (e) {
      resp = {
        'status': false,
        'data': {},
        'message': "Something went wrong. Please try again later.",
      };
    }
    // print(resp);
    return resp;
  }

  static Future makePatchRequest(String url, Map payload,
      {Map<String, String>? headers}) async {
    var uri = Uri.parse(url);

    var resp = {};

    try {
      http.Response response = await http
          .patch(
            uri,
            body: payload,
            headers: headers ?? {},
          )
          .timeout(const Duration(milliseconds: HayftConstants.connectTimeout));
      if (response.statusCode < 200 || response.statusCode > 226) {
        resp = json.decode(response.body);
      } else {
        resp = json.decode(response.body);
      }
    } on SocketException catch (e) {
      resp = {
        'status': false,
        'data': {},
        'message': "No internet connection",
      };
    } on FormatException catch (e) {
      resp = {
        'status': false,
        'data': {},
        'message': "Invalid response format",
      };
    } on TimeoutException catch (e) {
      resp = {
        'status': false,
        'data': {},
        'message': "Connection timed out. Please try again later.",
      };
    } on Exception catch (e) {
      resp = {
        'status': false,
        'data': {},
        'message': "Something went wrong. Please try again later.",
      };
    } catch (e) {
      resp = {
        'status': false,
        'data': {},
        'message': "Something went wrong. Please try again later.",
      };
    }
    return resp;
  }
}
