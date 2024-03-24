import 'package:flutter/material.dart';
import 'package:todoapp/screens/profile.dart';

import 'pagedoma.dart';
import 'search_page.dart';
class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _currentIndex = 0;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.pinkAccent,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: ' Дом',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assistant),
            label: 'Помошник',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Профиль',
          ),
        ],
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      body: IndexedStack(
        index: _currentIndex,
        // ignore: prefer_const_literals_to_create_immutables
        children:  [
         const Pagedoma(),
         const SearchPage(),
          const Profile(),
        ],
      ),
    );
  }
}