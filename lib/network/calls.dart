import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:algolia_news_app/main.dart';
import 'api.dart';
import 'constants.dart';

openLoader({bool showLoading = false}) {
  if (showLoading) {
    showDialog(
      barrierDismissible: false,
        context:  nav.currentContext!,
        builder: (context) => const Center(child: CircularProgressIndicator()));
  }
}

exitLoader({bool showLoading = false, data}) {
  if (showLoading) {
    Navigator.pop(nav.currentContext!);
  }
}

Future<({dynamic data, int status_code})> get(
    {required url, bool showLoading = false}) async {

  url = base_url + url;
  var uri = Uri.parse(url);
  var data;
  var status_code = 504;

  try {
    var response =
        await http.get(uri).timeout(NetworkConstants.timeout);
    data = jsonDecode(response.body);
    status_code = response.statusCode;
  } catch (e) {
    switch (e.runtimeType) {
      case SocketException:
        data = "Socket Exception";
        break;
      case TimeoutException:
        data = "Network Timed Out";
        break;
      default:
        data = "An Error Occurred";
    }
  }

  return (data: data, status_code: status_code);
}

