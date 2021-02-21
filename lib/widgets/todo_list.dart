import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toda_list/model/model_provider.dart';
import 'package:toda_list/widgets/todo_tile.dart';

class TodoList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Consumer<TasksData>(
      builder: (BuildContext context, data, Widget child) {
        return ListView.builder(
          itemBuilder:(context,index){
            final task=data.tasks[index];
            return TodoTile(
              title:task.title ,
              isChecked: task.isDone,
              function: (value){
                data.updateTask(task);
              },
              longPressCallback: (){
                data.deleteTask(task);
              },
            );
          } ,
          itemCount: data.taskCount(),
        );
      },
    );
  }
}
