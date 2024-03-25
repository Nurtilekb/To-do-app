


class Task{
   String descriptext;
   final String name;
   bool isDone;
   Task({this.name='', this.isDone=false,   required this.descriptext});
   void toggleDone(){
     isDone=!isDone;
   }
   void remove(){

   }
Map<String, dynamic> toJson() {
    return {
      'name': name,
      'isDone': isDone,
      'descriptext':descriptext
    };
  }
 factory Task.fromJson(Map<String, dynamic> json) {
    return Task(
      name: json['name'],
      isDone: json['isDone'] ?? false, 
      descriptext:json['descriptext'],
    );
  }
  

  
}