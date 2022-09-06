import 'package:flutter/material.dart';
import 'package:flutter/src/services/asset_bundle.dart';
import 'package:flutter/src/painting/image_provider.dart';
import 'package:to_do/widget/taskList.dart';
import 'package:to_do/widget/taskWidget.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({Key? key}) : super(key: key);

  Widget buildBottomSheet(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButton: FloatingActionButton(
      //     backgroundColor: Color(0xFFDB9BD5),
      //     child: Icon(Icons.add),
      //     onPressed: () {}),
      backgroundColor: Color(0xFFFBF1F3),
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: 44,
                      right: 44,
                      top: 36,
                    ),
                    child: Image(
                      image: AssetImage("assets/images/logo.png"),
                      width: 67.1,
                      height: 74,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 44,
                      right: 44,
                      top: 20,
                    ),
                    child: Text(
                      'No. of Tasks',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Container(
                        padding: EdgeInsets.only(left: 11, right: 11, top: 20),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.9),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xFF000000).withOpacity(0.25),
                              blurRadius: 4.0,
                              spreadRadius: 0.0,
                              offset: Offset(0, 4),
                            ),
                          ],
                        ),
                        child: new TaskList(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              child: GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                      context: context, builder: buildBottomSheet);
                },
                child: Container(
                  child: Image(
                    image: AssetImage("assets/images/addTodo.png"),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFF000000).withOpacity(0.25),
                        blurRadius: 4.0,
                        spreadRadius: 0,
                        offset: Offset(0, 4),
                      )
                    ],
                  ),
                ),
              ),
              right: 30,
              bottom: 30,
              width: 50,
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
