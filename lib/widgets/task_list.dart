import 'package:flutter/material.dart';
import 'package:todoapp/models/task_data.dart';
import 'task_tile.dart';
import 'package:provider/provider.dart';

class TaskList extends StatefulWidget {
  const TaskList({super.key});

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Container(
        height: 590,
        child: Consumer<TaskData>(
          builder: (context, taskdata, child) {
            return ListView.builder(
              itemBuilder: (context, index) {
                final task = taskdata.tasks[index];
                return Container(
                  decoration: BoxDecoration(
                      border: Border.all(width: 1),
                      color: Color.fromARGB(255, 226, 211, 243)),
                  child: TaskTile(
                    taskTitle: taskdata.tasks[index].name,
                    isChecked: task.isDone,
                    toggleCheckboxState: (checkboxState) {
                      taskdata.updateTask(task);
                    },
                    LongPressCheck: () {
                      taskdata.deleteTask(task);
                    },
                  ),
                );
              },
              itemCount: taskdata.taskCount,
            );
          },
        ),
      ),
    );
  }
}
