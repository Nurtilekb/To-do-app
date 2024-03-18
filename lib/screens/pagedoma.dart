import 'package:flutter/material.dart';
import 'package:todoapp/widgets/task_list.dart';

import '../widgets/Tipespisok.dart';

class Pagedoma extends StatefulWidget {
  const Pagedoma({super.key, });

 

  @override
  State<Pagedoma> createState() => _PagedomaState();
}

class _PagedomaState extends State<Pagedoma> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return const Color.fromARGB(255, 9, 166, 137);
    }

    return Column(
      children: [
        TaskList(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: FloatingActionButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return const Tipespisok();
                },
              );
            },
            child: const Icon(Icons.add),
          ),
        )
      ],
    );
  }
}
