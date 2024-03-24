


class Task{
   final String name;
   bool isDone;
   Task({this.name='', this.isDone=false});
   void toggleDone(){
     isDone=!isDone;
   }
   void remove(){

   }
Map<String, dynamic> toJson() {
    return {
      'name': name,
      'isDone': isDone,
    };
  }
 factory Task.fromJson(Map<String, dynamic> json) {
    return Task(
      name: json['name'],
      isDone: json['isDone'] ?? false,
    );
  }
  

  
}