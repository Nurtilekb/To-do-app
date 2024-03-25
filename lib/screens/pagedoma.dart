import 'package:flutter/material.dart';
import 'package:todoapp/widgets/task_list.dart';

import '../widgets/Tipespisok.dart';

class Pagedoma extends StatefulWidget {
  const Pagedoma({
    super.key,
  });

  @override
  State<Pagedoma> createState() => _PagedomaState();
}

class _PagedomaState extends State<Pagedoma> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const TaskList(),
        Positioned(
            right: 20,
            bottom: 20,
            child: MaterialButton(
              height: 40,
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return const Tipespisok();
                  },
                );
              },
              color: Colors.orange,
              textColor: Colors.white,
              child: const Row(
                children: [Icon(Icons.add), Text('  Добавить заметку')],
              ),
            ))
      ],
    );
  }
}
