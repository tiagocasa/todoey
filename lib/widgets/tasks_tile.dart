import 'dart:ui';

import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool checkValue;
  final String taskTitle;
  final void Function(bool?) checkboxCallback;
  final GestureLongPressCallback? longPressCallback;

  TaskTile({
    super.key,
    required this.checkValue,
    required this.taskTitle,
    required this.checkboxCallback,
    required this.longPressCallback,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: checkValue ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        value: checkValue,
        activeColor: Colors.lightBlueAccent,
        onChanged: checkboxCallback,
      ),
      onLongPress: longPressCallback,
    );
  }
}
