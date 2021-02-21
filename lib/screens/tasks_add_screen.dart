import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toda_list/model/model_provider.dart';

class AddTaskScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    String newValue;

    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 26.0,horizontal: 32.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius:BorderRadius.only(topLeft: Radius.circular(20.0),topRight: Radius.circular(20.0))
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Add Task',textAlign: TextAlign.center,style: TextStyle(color: Colors.lightBlueAccent,fontSize: 30.0)),
            TextField(
              autofocus: true,
              onChanged: (value){newValue=value;},
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16.0),
            ),
            FlatButton(
              padding:EdgeInsets.all(8.0),
                onPressed: (){
                if(newValue.isNotEmpty){
                  Provider.of<TasksData>(context,listen: false).addTask(newValue);
                  Navigator.pop(context);
                }
                },
                color: Colors.lightBlueAccent,
                child:Text('Add',style: TextStyle(color: Colors.white,fontSize: 17.0),) )
          ],
        ),
      ),
    );
  }
}
