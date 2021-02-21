import 'package:flutter/material.dart';

class TodoTile extends StatelessWidget {
  final bool isChecked ;
  final String title;
  final Function function;
  final Function longPressCallback;
  TodoTile({this.title,this.isChecked,this.function,this.longPressCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
        title: Text(title,
          style: TextStyle(decoration: isChecked ? TextDecoration.lineThrough:null)),
        trailing:Checkbox(
            value: isChecked,
            onChanged: function,
            activeColor: Colors.lightBlueAccent
        )
    );
  }
}