import 'package:flutter/cupertino.dart';
import 'package:toda_list/model/task_data.dart';

class TasksData extends ChangeNotifier{
  List<Task> tasks=[
    Task(title: 'listening music'),
    Task(title: 'listening music'),
    Task(title: 'listening music')
  ];

  void addTask(String value){
    tasks.add(Task(title: value));
    notifyListeners();
  }
  int taskCount(){
    return tasks.length;
  }

  void updateTask(Task task){
    task.changeState();
    notifyListeners();
  }

  void deleteTask(Task task){
    tasks.remove(task);
    notifyListeners();
  }
}