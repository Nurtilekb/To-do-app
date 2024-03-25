import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';
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


  

  void addTask(String newTaskTitle, String taskDescription) {
  final task = Task(name: newTaskTitle, descriptext: taskDescription);
  tasks.add(task);
  saveData();
  notifyListeners();
}

  void updateTask(Task task) {
    task.toggleDone();
     saveData(); 
    notifyListeners();
  }

  void deleteTask(Task task) {
    tasks.remove(task);
    notifyListeners();
  }

 


Future<void> saveData() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String dataJson = json.encode(tasks.map((task) => task.toJson()).toList());
  await prefs.setString('listData', dataJson);
}

Future<void> loadData() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String? dataJson = prefs.getString('listData');
  if (dataJson != null) {
    List<dynamic> taskJsonList = json.decode(dataJson);
    tasks = taskJsonList.map((json) => Task.fromJson(json)).toList();
    notifyListeners();
  }
}

}