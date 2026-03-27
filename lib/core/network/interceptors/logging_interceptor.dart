import 'package:dio/dio.dart';

class LoggingInterceptor extends Interceptor {
  @override
  void onResponse(response, handler) {
    print('RESPONSE: ${response.data}');
    handler.next(response);
  }
}