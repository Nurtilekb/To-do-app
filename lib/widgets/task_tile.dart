
import 'package:flutter/material.dart';


import '../models/task.dart';

class TaskTile extends StatefulWidget {
  final bool isChecked;
  final String taskTitle;
  final Function(bool?) toggleCheckboxState;
  final Function() LongPressCheck;

  const TaskTile(
      {Key? key,
      required this.isChecked,
      required this.taskTitle,
      required this.toggleCheckboxState,
      required this.LongPressCheck})
      : super(key: key);

  @override
  State<TaskTile> createState() => _TaskTileState();
}
List<Task> tasks = [];
class _TaskTileState extends State<TaskTile> {
  void checkboxCallBack(bool? checkboxState) {}

  @override
  void initState() {
    super.initState();
    
  }


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color:  Color.fromARGB(255, 173, 205, 232),
        ),
          child: ListTile(
            onLongPress: widget.LongPressCheck,
            title: Text(
              widget.taskTitle,
              style: TextStyle(
                  decoration: widget.isChecked
                      ? TextDecoration.lineThrough
                      : TextDecoration.none),
            ),
            trailing: Checkbox(
                activeColor: Colors.green,
                value: widget.isChecked,
                onChanged: widget.toggleCheckboxState),
          ),
        ),
        const SizedBox(
          height: 7,
        )
      ],
    );
  }
}
