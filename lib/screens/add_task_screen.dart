import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  late String taskText;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            )),
        child: Column(children: <Widget>[
          SizedBox(height: 40),
          Text(
            'ADD TASK',
            style: TextStyle(
                fontSize: 25,
                color: Colors.lightBlueAccent,
                fontWeight: FontWeight.w700),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.0),
            child: TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (value) {
                taskText = value;
              },
            ),
          ),
          SizedBox(height: 20),
          TextButton(
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all<Color>(Colors.lightBlueAccent),
            ),
            onPressed: () {
              print('1');
              Provider.of<TaskData>(context, listen: false).addTasks(taskText);
              print('2');
              Navigator.pop(context);
              print('3');
            },
            child: SizedBox(
              height: 40,
              width: 150,
              child: Center(
                child: Text(
                  'Add',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          )
        ]),
      ),
    );
  }
}
