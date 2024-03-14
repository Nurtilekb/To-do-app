import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Tipespisok extends StatefulWidget {
  const Tipespisok({
    super.key,
    
  });

 

  @override
  State<Tipespisok> createState() => _TipespisokState();
  
}

class _TipespisokState extends State<Tipespisok> {
   TextEditingController controller = TextEditingController();
      TextEditingController descripcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
     var dlina = MediaQuery.of(context).size.width;
    var vsota = MediaQuery.of(context).size.height;
    return AlertDialog(
      backgroundColor:const Color.fromARGB(183, 100, 236, 123),
    scrollable: true,
    title: const Text(
      'New Task',
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 16, ),
    ),
    content: SizedBox(
      height: vsota * 0.35,
      width: dlina,
      child: Form(
        child: Column(
          children: <Widget>[
            TextFormField(controller: controller,
              style: const TextStyle(fontSize: 14),
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 20,
                ),
                hintText: 'Task',
                hintStyle: const TextStyle(fontSize: 14),
                icon: const Icon(CupertinoIcons.square_list, color: Colors.brown),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
            const SizedBox(height: 15),
            TextFormField(
              controller: descripcontroller,
              keyboardType: TextInputType.multiline,
              maxLines: null,
              style: const TextStyle(fontSize: 14),
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 20,
                ),
                hintText: 'Description',
                hintStyle: const TextStyle(fontSize: 14),
                icon: const Icon(CupertinoIcons.bubble_left_bubble_right, color: Colors.brown),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
            const SizedBox(height: 15),
            const Row(
              children: <Widget>[
                Icon(CupertinoIcons.tag, color: Colors.brown),
                SizedBox(width: 15.0),
                
              ],
            ),
          ],
        ),
      ),
    ),
    actions: [
      ElevatedButton(
        onPressed: () {},
       
        
        child: const Text('Выйти'),
      ),
      ElevatedButton(
        onPressed: () {},
        child: const Text('Сохранить'),
      ),
    ],
        );
  }
}

