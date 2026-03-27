import 'package:dio/dio.dart';
import 'package:hive/hive.dart';
import '../../../../core/network/api_endpoints.dart';
import '../../../../core/network/dio_client.dart';

class TasksRepository {
  final dio = DioClient.create();
  final box = Hive.box('tasks');

  Future<List<dynamic>> getTasks() async {
    try {
      final res = await dio.get(ApiEndpoints.todos);

      box.put('tasks', res.data);

      return res.data;
    } catch (_) {
      return box.get('tasks', defaultValue: []);
    }
  }
}