import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {

  final bool isChecked ;
  final String taskTitle;
  final Function(bool?) toggleCheckboxState;
  final Function() LongPressCheck;


  const TaskTile({Key? key, required this.isChecked,required this.taskTitle, required this.toggleCheckboxState,
  required this.LongPressCheck}) : super(key: key);
  void checkboxCallBack(bool? checkboxState) {
  
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: LongPressCheck,
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration:
            isChecked ? TextDecoration.lineThrough : TextDecoration.none),
      ),
      trailing: Checkbox(
          activeColor: Colors.green,
          value: isChecked,
          onChanged: toggleCheckboxState),
    );
  }
}
