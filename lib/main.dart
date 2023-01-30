import 'package:flutter/material.dart';
import 'ToDoPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(
      title:"To Do",
      theme: ThemeData(primarySwatch: Colors.green),
      home:ToDoPage(),
    );
  }
}

