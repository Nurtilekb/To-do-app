
import 'package:flutter/material.dart';


class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final String? taskDescription; 
  final Function(bool?) toggleCheckboxState;
  final Function() LongPressCheck;

   const TaskTile({super.key, 
    required this.isChecked,
    required this.taskTitle,
    required this.taskDescription, 
    required this.toggleCheckboxState,
    required this.LongPressCheck,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Color.fromARGB(255, 173, 205, 232),
          ),
          child: ListTile(
            onLongPress: LongPressCheck,
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  taskTitle,
                  style: TextStyle(
                    decoration: isChecked
                        ? TextDecoration.lineThrough
                        : TextDecoration.none,
                  ),
                ), 
                
              ],
            ),
            trailing: Checkbox(
              activeColor: Colors.green,
              value: isChecked,
              onChanged: toggleCheckboxState,
            ),subtitle: Text(taskDescription.toString(),style:  TextStyle(color: Color.fromARGB(255, 255, 19, 6), decoration: isChecked
                        ? TextDecoration.lineThrough
                        : TextDecoration.none,),)
          ),
        ),
        const SizedBox(height: 7),
      ],
    );
  }
}
