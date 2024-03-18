import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/models/task_data.dart';

class Tipespisok extends StatefulWidget {
  
  const Tipespisok({
    
    super.key,
  });

  @override
  State<Tipespisok> createState() => _TipespisokState();
  
}

class _TipespisokState extends State<Tipespisok> {
    late String newtext;
    late String descriptext;
  TextEditingController controller = TextEditingController();
  TextEditingController descripcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var dlina = MediaQuery.of(context).size.width;
    var vsota = MediaQuery.of(context).size.height;
    return AlertDialog(
      backgroundColor: const Color.fromARGB(255, 100, 236, 123),
      scrollable: true,
      title: const Text(
        'Введите свой план',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500
        ),
      ),
      content: SizedBox(
        height: vsota * 0.35,
        width: dlina,
        child: Form(
          child: Column(
            children: <Widget>[
              TextFormField(
               onChanged: (value){
                newtext=value;
              },
                controller: controller,
                style: const TextStyle(fontSize: 14),
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 20,
                  ),
                  hintText: 'Дела',
                  hintStyle: const TextStyle(fontSize: 14),
                  icon: const Icon(CupertinoIcons.square_list,
                      color: Colors.brown),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              TextFormField(
               onChanged: (newDescription) {
            descriptext=newDescription;
          },
                controller: descripcontroller,
                style: const TextStyle(fontSize: 14),
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 20,
                  ),
                  hintText: 'Дополнительно',
                  hintStyle: const TextStyle(fontSize: 14),
                  icon: const Icon(CupertinoIcons.add_circled,
                      color: Colors.brown),
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
          onPressed: () {
                 Navigator.pop(context);
          },
          child: const Text('Выйти'),
        ),
        ElevatedButton(
         onPressed: (){
                Provider.of<TaskData>(context ,listen: false).addTask(newtext) ;
                 Provider.of<TaskData>(context ,listen: false).addTask(descriptext) ;
                Navigator.pop(context);

                }, child: const Text('Сохранить'),
        ),
      ],
    );
  }
}
