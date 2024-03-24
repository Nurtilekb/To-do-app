import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:todoapp/models/task_data.dart';
import 'task_tile.dart';

class TaskList extends StatefulWidget {
  const TaskList({super.key});

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  void initState() {
    super.initState();
    // Загрузка данных из Shared Preferences при инициализации виджета
    Provider.of<TaskData>(context, listen: false).loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsetsDirectional.all(10),
      height: 610,
      child: Consumer<TaskData>(
        builder: (context, taskdata, child) {
          return ListView.builder(
            itemBuilder: (context, index) {
              final task = taskdata.tasks[index];
              return TaskTile(
                taskTitle: taskdata.tasks[index].name,
                isChecked: task.isDone,
                toggleCheckboxState: (checkboxState) {
                  taskdata.updateTask(task);
                },
                LongPressCheck: () {
                  taskdata.deleteTask(task);
                },
              );
            },
            itemCount: taskdata.taskCount,
          );
        },
      ),
    );
  }
}
