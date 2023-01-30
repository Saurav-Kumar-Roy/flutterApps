import 'package:flutter/material.dart';
import 'style.dart';
class ToDoPage extends StatefulWidget{

  State<StatefulWidget> createState(){
    return ToDoPageView();
  }

}

class ToDoPageView extends State<ToDoPage>{
  
  List ToDoList = [];
  String Item ="";

  MyInputOnChange(value){
    setState(() {
      Item=value;
    });
  }

    AddItem(){
    setState(() {
      ToDoList.add(Item);
    });
  }

  RemonveItem(index){
    setState(() {
      ToDoList.removeAt(index);
  });
  }

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("ToDo"),
      ),
      body:Container(
          padding: EdgeInsets.all(10),
          child:Column(
            children: [
              Expanded(
                flex:10,
                child:Row(
                  children:[
                    Expanded(
                      flex:70,
                      child:TextFormField(
                        onChanged: (value){
                          MyInputOnChange(value);
                        },
                        decoration: AppInputDecoration("list Item"),
                      ),
                    ),
                    Expanded(
                      flex:30,
                      child:Padding(
                        padding: EdgeInsets.only(left:5),
                        child: ElevatedButton(
                          onPressed: (){AddItem();},
                          child: Text("Add"),
                          style:AppButtonStyle()
                        ),
                      ), 
                    ),
                  ],
                  
                ),
              ),
              Expanded(
                flex:90,
                child:ListView.builder(
                  itemCount:ToDoList.length,
                  itemBuilder:(contxt,index){
                    return Card(
                      child:SizeBox50(
                        Row(
                          children: [
                            Expanded(flex:80,child:Text(ToDoList[index])),
                            Expanded(flex:20,child: TextButton(onPressed: (){RemonveItem(index);},child: Icon(Icons.delete)),),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
    );
  }
}