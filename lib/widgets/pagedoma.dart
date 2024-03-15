import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Tipespisok.dart';

class Pagedoma extends StatefulWidget {
   const Pagedoma({
    super.key,
    required this.dela
  });

  final List<String> dela;
  @override
  State<Pagedoma> createState() => _PagedomaState();
}

class _PagedomaState extends State<Pagedoma> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 590,
          child: ListView.builder(
            itemCount: widget.dela.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(decoration: BoxDecoration(border: Border.all(width: 1)),
                child: ListTile(
                  title: Column(
                    children: [
                       Consumer<TextProvider>(
                        builder: (context, textProvider, child) {
                          return Text(
                            textProvider.text,
                            style: const TextStyle(fontSize: 10),
                          );
                        },
                      ),
                      Consumer<TextProvider>(
                        builder: (context, textProvider, child) {
                          return Text(
                            textProvider.description, 
                            style: const TextStyle(fontSize: 10),
                          );
                        },
                      ),
                    
                    ],
                  ),
                  onTap: () {},
                ),
              );
            },
          ),
        ),
        FloatingActionButton(
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
      ],
    );
  }
}
