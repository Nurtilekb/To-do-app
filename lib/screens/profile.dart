import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: Colors.blueGrey,
        
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 const CircleAvatar(
                  radius: 75.0,
                  backgroundImage:  AssetImage('assets/images/Myphoto.jpeg'),
                  backgroundColor: Colors.teal,
                ),
                const Text(
                  'Billal Hossain',
                  style: TextStyle(
                      fontFamily: 'OpenSansCondensed',
                      fontSize: 40.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                const Text(
                  'FLUTTER BEGINNER DEVELOPER',
                  style: TextStyle(
                      fontFamily: 'SourceSansPro',
                      fontSize: 20.0,
                      color: Colors.greenAccent),
                ),
                const SizedBox(
                  height: 15.0,
                  width: 150.0,
                  child: Divider(
                    color: Colors.amber,
                  ),
                ),
                Card(
                    margin: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 5.0),
                    color: Colors.teal.shade300,
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
                            fontFamily: 'SourceSansPro',
                            color: Colors.grey.shade200),
                      ),
                    )),
                Card(
                    margin:
                        const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                    color: Colors.teal.shade300,
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
                            fontFamily: 'SourceSansPro',
                            color: Colors.grey.shade200),
                      ),
                    ))
              ],
            ),
          ),
        ),
      
    );
  }
}