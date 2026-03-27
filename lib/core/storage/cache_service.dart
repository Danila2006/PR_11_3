import 'package:hive/hive.dart';

class CacheService {
  static final box = Hive.box('cache');

  static Future<void> saveTasks(List data) async {
    await box.put('tasks', data);
  }

  static List getTasks() {
    return box.get('tasks', defaultValue: []);
  }
}