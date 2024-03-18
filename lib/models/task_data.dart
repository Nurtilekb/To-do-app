import 'package:flutter/foundation.dart';
import 'dart:collection';

import 'package:todoapp/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    
  ];

  UnmodifiableListView<Task> get mtasks {
    return UnmodifiableListView(tasks);
  }

  int get taskCount {
    return tasks.length;
  }

  void addTask(String newTaskTitle) {
    final task = Task(name: newTaskTitle);
    tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    tasks.remove(task);
    notifyListeners();
  }
 
}
