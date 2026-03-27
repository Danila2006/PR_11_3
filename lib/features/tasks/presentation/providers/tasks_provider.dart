import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../data/repositories/tasks_repository.dart';

final tasksProvider = FutureProvider<List<dynamic>>((ref) async {
  final repo = TasksRepository();
  return repo.getTasks();
});