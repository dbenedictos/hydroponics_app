import 'dart:ui';
import 'package:async_redux/async_redux.dart';

class RequestExceptionCode extends ExceptionCode {
  RequestExceptionCode({this.code, this.key}) : assert(key != null || code != null);
  final int code;
  final String key;

  @override
  String asText([Locale locale]) {
    return key ?? code.toString();
  }
}
