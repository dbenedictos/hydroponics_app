import 'dart:io';
import 'package:flutter/material.dart';
import 'package:async_redux/async_redux.dart';
import 'package:dio/dio.dart';
import 'package:hydroponics_app/state/actions/actions.dart';
import 'package:hydroponics_app/utilities/string_constants.dart';

class ApiClient {
  ApiClient({
    @required this.baseUrl,
    this.responseType,
  }) : assert(baseUrl != null) {
    dio = Dio()
      ..options.baseUrl = baseUrl
      ..interceptors.add(InterceptorsWrapper(
        onRequest: (RequestOptions options, _) {
          dio.interceptors.requestLock.lock();
          if (responseType != null) options.responseType = responseType;

          options.headers = <String, dynamic>{
            'Accept': 'application/json',
            'content-type': 'application/json',
          };
          dio.interceptors.requestLock.unlock();
          return options;
        },
        onError: (DioError error, _) {
          if (error.error is SocketException) {
            throw UserException(errorNoInternetMessage, code: RequestExceptionCode(key: 'no_connection'));
          }
        },
      ));
  }

  final String baseUrl;
  final ResponseType responseType;
  Dio dio;
}
