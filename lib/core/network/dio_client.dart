import 'package:dio/dio.dart';

class DioClient {
  static Dio create() {
    final dio = Dio();

    dio.options = BaseOptions(
      headers: {'Content-Type': 'application/json'},
      validateStatus: (status) => status != null && status < 500,
    );

    return dio;
  }
}