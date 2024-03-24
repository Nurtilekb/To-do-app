import 'package:flutter/material.dart';

class DrawLis extends StatelessWidget {
  const DrawLis({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 100, 236, 123),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            const Text(
              'TRUDOVKI',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
            ),
            Containery(
                jobb: 'Gruzchik',
                iconka: const Icon(Icons.adjust_rounded),
                iconka2: const Icon(Icons.skip_next_rounded),
                onPressed: () {}),
            const SizedBox(height: 10),
            Containery(
                jobb: 'Medic ',
                iconka: const Icon(Icons.adjust_rounded),
                iconka2: const Icon(Icons.skip_next_rounded),
                onPressed: () {}),
            const SizedBox(height: 10),
            Containery(
                jobb: 'Progromist ',
                iconka: const Icon(Icons.headphones_battery),
                iconka2: const Icon(Icons.golf_course),
                onPressed: () {}),
            const SizedBox(height: 10),
            Containery(
                jobb: 'вцсввыс',
                iconka: const Icon(Icons.foggy),
                iconka2: const Icon(Icons.forward_to_inbox),
                onPressed: () {}),
            const SizedBox(height: 10),
            Containery(
                jobb: 'Gruzchik',
                iconka: const Icon(Icons.deck_sharp),
                iconka2: const Icon(Icons.safety_divider),
                onPressed: () {}),
            const SizedBox(height: 10),
            Containery(
              jobb: 'Gruzchik',
              iconka: const Icon(Icons.laptop_windows),
              iconka2: const Icon(Icons.wallet),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}

class Containery extends StatelessWidget {
  const Containery({super.key, 
    required this.jobb,
    required this.iconka,
    required this.iconka2,
    required this.onPressed,
  });
  final String jobb;
  final Icon iconka;
  final Icon iconka2;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: const Color.fromARGB(255, 100, 236, 123),
      elevation: 0,
      onPressed: () {},
      child: Container(
        height: 40,
        decoration: BoxDecoration(
            color: const Color.fromARGB(184, 96, 125, 139),
            border: Border.all(
              width: 1,
            ),
            borderRadius: BorderRadius.circular(5)),
        child: Row(
          children: [
            const SizedBox(width: 10),
            iconka,
            const SizedBox(width: 10),
            Expanded(
              child: Text(
                jobb,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
            ),
            iconka2,
            const SizedBox(width: 10)
          ],
        ),
      ),
    );
  }
}
