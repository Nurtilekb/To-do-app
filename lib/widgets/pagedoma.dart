import 'package:flutter/material.dart';

class Pagedoma extends StatefulWidget {
  const Pagedoma({
    super.key,
    required List<String> items,
  }) : _items = items;

  final List<String> _items;

  @override
  State<Pagedoma> createState() => _PagedomaState();
}

class _PagedomaState extends State<Pagedoma> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: ListView.builder(
      itemCount: widget._items.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Container(
           height: 40,
            decoration: BoxDecoration(border: Border.all(width: 1),
            color:  const Color.fromARGB(255, 219, 212, 148),
            borderRadius: BorderRadius.circular(7),
            ),
            child: Text(widget._items[index]),
          ),
          onTap: () {
           
          },
        );
      },
    ),
    );
  }
}
