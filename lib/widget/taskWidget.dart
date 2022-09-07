import 'package:flutter/material.dart';

class task extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function(bool?) checkBoxCallBack;

  task(
      {required this.isChecked,
      required this.taskTitle,
      required this.checkBoxCallBack});

  // void checkBoxCallBack(bool? checkBoxState) {
  //   // setState(() {
  //   //   isChecked = checkBoxState ?? true;
  //   // });
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        leading: Transform.scale(
          scale: 1.3,
          child: Checkbox(
            activeColor: Color(0xFFD89DCE),
            value: isChecked,
            onChanged: checkBoxCallBack,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6),
            ),
          ),
        ),
        title: Text(
          taskTitle,
          style: TextStyle(
              fontSize: 18,
              decoration: isChecked ? TextDecoration.lineThrough : null),
        ),
      ),
    );
  }
}
