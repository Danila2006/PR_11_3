import 'package:hive_flutter/hive_flutter.dart';

class AppInit {
  static Future<void> init() async {
    await Hive.initFlutter();
    await Hive.openBox('tasks');
  }
}