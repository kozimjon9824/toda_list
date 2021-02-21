import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:provider/provider.dart';
import 'package:toda_list/model/model_provider.dart';
import 'package:toda_list/widgets/todo_list.dart';
import 'package:toda_list/screens/tasks_add_screen.dart';

class TaskScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.lightBlueAccent,
          child: Icon(Icons.add),
          onPressed: (){
            showModalBottomSheet(context: context,
                builder: (context)=>AddTaskScreen()
            );
          }),

      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(top: 30.0,left: 30.0,bottom: 30.0,right: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    child: Icon(Icons.list,color: Colors.lightBlueAccent,size: 30.0),
                    radius: 28.0,
                    backgroundColor: Colors.white,
                  ),
                  SizedBox(height: 16.0),

                  Text('Todoey',style: TextStyle(fontSize: 40.0,color: Colors.white,fontWeight: FontWeight.w600)),

                  Text('${Provider.of<TasksData>(context).taskCount()} Tasks',style: TextStyle(fontSize: 16.0,color: Colors.white))
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(top: 30.0,left: 30.0,bottom: 30.0,right: 30.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0),topRight: Radius.circular(20.0))
                ),
                child: TodoList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
