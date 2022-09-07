import 'package:flutter/material.dart';

class task extends StatefulWidget {
  const task({Key? key}) : super(key: key);

  @override
  State<task> createState() => _taskState();
}

class _taskState extends State<task> {
  bool isChecked = false;

  void checkBoxCallBack(bool? checkBoxState) {
    setState(() {
      isChecked = checkBoxState ?? true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        leading: Transform.scale(
          scale: 1.3,
          child: checkBox(isChecked, checkBoxCallBack),
        ),
        title: Text(
          "Beginning",
          style: TextStyle(
              fontSize: 18,
              decoration: isChecked ? TextDecoration.lineThrough : null),
        ),
      ),
    );
  }
}

class checkBox extends StatelessWidget {
  final bool isChecked;
  final Function(bool?) toggleCheckBoxState;

  checkBox(this.isChecked, this.toggleCheckBoxState);

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Color(0xFFD89DCE),
      value: isChecked,
      onChanged: toggleCheckBoxState,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6),
      ),
    );
  }
}
