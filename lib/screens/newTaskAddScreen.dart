import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF736f70),
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xFFFBF1F3),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 30),
                child: Text(
                  "Add Task",
                  style: TextStyle(
                    fontSize: 27,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF211551),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 48.0,
                  right: 48.0,
                  top: 10,
                ),
                child: TextField(
                  autofocus: true,
                  decoration: InputDecoration(
                    // border: InputBorder.none,
                    hintText: "Add task",
                    hintStyle: TextStyle(
                      color: Color(0xFF211551).withOpacity(0.8),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  vertical: 20,
                ),
                child: Center(
                  child: Text(
                    "Add",
                    style: TextStyle(
                      fontSize: 20,
                      color: Color(0xFFFBF1F3),
                    ),
                  ),
                ),
                height: 50,
                width: 220,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFF000000).withOpacity(0.25),
                      blurRadius: 4,
                      spreadRadius: 0,
                      offset: Offset(0, 4),
                    )
                  ],
                  color: Color(0xFFDB9BD5),
                  borderRadius: BorderRadius.circular(20),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
