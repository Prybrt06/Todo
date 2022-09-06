import 'package:flutter/material.dart';

class task extends StatelessWidget {
  const task({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.only(
      //   bottom: 20,
      // ),
      // child: Row(
      //   children: [
      //     Padding(
      //       padding: EdgeInsets.only(
      //         right: 10,
      //       ),
      //       child: Image(
      //         image: AssetImage("assets/images/checkedLogo.png"),
      //       ),
      //     ),
      //     Text("Beginning"),
      //   ],
      // ),
      child: ListTile(
        leading: Image(
          image: AssetImage("assets/images/checkedLogo.png"),
        ),
        title: Text("Beginning"),
      ),
    );
  }
}
