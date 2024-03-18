import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 75.0,
              backgroundImage: AssetImage('assets/images/Myphoto.jpeg'),
              backgroundColor: Colors.teal,
            ),
            const Text(
              'A.Nurtilek',
              style: TextStyle(
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            const Text(
              'FLUTTER BEGINNER DEVELOPER',
              style: TextStyle(fontSize: 20.0, color: Colors.greenAccent),
            ),
            const SizedBox(
              height: 15.0,
              width: 150.0,
              child: Divider(
                color: Colors.amber,
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                  margin: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 5.0),
                  decoration: BoxDecoration(
                        color: Colors.teal.shade300,
                        borderRadius: BorderRadius.circular(12)),
                  child: ListTile(
                    leading: const Icon(
                      Icons.home_outlined,
                      color: Colors.white,
                    ),
                    title: Text(
                      'Bishkek,Kyrgyyzstan',
                      style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.normal,
                          color: Colors.grey.shade200),
                    ),
                  )),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                  margin: const EdgeInsets.symmetric(
                      vertical: 5.0, horizontal: 20.0),
                  decoration: BoxDecoration(
                      color: Colors.teal.shade300,
                      borderRadius: BorderRadius.circular(12)),
                  child: ListTile(
                    leading: const Icon(
                      Icons.email_outlined,
                      color: Colors.white,
                    ),
                    title: Text(
                      'nurtilekabdulahatov@gmail.com',
                      style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.normal,
                          color: Colors.grey.shade200),
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
