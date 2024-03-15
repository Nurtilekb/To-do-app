import 'package:flutter/material.dart';
import 'package:todoapp/screens/profile.dart';
import 'package:todoapp/widgets/Tipespisok.dart';

import '../widgets/pagedoma.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}


class _HomepageState extends State<Homepage> {
  int _currentIndex = 0;
  
final List<String> _dela =  [];
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      backgroundColor: Colors.blue[50],
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.pinkAccent,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: ' Дом',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Поиск',
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
        children: [
          Pagedoma(dela: _dela,),
          const Tipespisok(),
          const Profile()
        ],
      ),
    );
  }
}

