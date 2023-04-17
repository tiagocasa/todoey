import 'dart:ui';

import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  const TaskTile({
    super.key,
  });

  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool checkValue = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'This is a task 1',
        style: TextStyle(
            decoration: checkValue ? TextDecoration.lineThrough : null),
      ),
      trailing: TaskCheckbox(checkValue, (bool checkboxValue) {
        setState(() {
          checkValue = checkboxValue;
        });
      }),
    );
  }
}

class TaskCheckbox extends StatelessWidget {
  final bool checkboxState;
  final Function toggleCheckbox;

  TaskCheckbox(this.checkboxState, this.toggleCheckbox);

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: checkboxState,
      activeColor: Colors.lightBlueAccent,
      onChanged: toggleCheckbox(),
    );
  }
}
