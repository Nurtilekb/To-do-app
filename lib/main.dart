import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:todoapp/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp( theme: ThemeData(
      
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(183, 100, 236, 123)),
        useMaterial3: true,
      ),
      home: Scaffold(
        drawer: const Drawer(child: Center(child: Text("wdscqwad")),),
          appBar: PreferredSize(
              preferredSize: const Size.fromHeight(50),
              child: AppBar(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                   
                    const Text(
                      'Список дел',
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.calendar_month_outlined),
                    ),
                  ],
                ),
                backgroundColor: const Color.fromARGB(183, 100, 236, 123),
              )),
          body: const Homepage()),
    );
  }
}
