import 'package:flutter/material.dart';
import 'package:to_do/Models/taskItem.dart';
import 'package:to_do/widget/taskWidget.dart';
import 'package:to_do/screens/taskScreen.dart';

class TaskList extends StatefulWidget {
  final List<TaskItem> tasks;

  TaskList({required this.tasks});

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return widget.tasks.length == 0
            ? Image(
                image: AssetImage("assets/images/empty.png"),
              )
            : task(
                isChecked: widget.tasks[index].isDone,
                taskTitle: widget.tasks[index].name,
                checkBoxCallBack: (bool? checkBoxState) {
                  setState(() {
                    widget.tasks[index].toggleDone();
                  });
                },
              );
      },
      itemCount: widget.tasks.length,
    );
  }
}
