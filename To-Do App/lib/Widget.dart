import 'package:flutter/material.dart';

class Taskcard extends StatelessWidget {
  final String title, desc;
  Taskcard({this.title, this.desc});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 32.0, horizontal: 24.0),
      margin: EdgeInsets.only(bottom: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title ?? "(Unnamed Task)",
            style: TextStyle(
                color: Colors.black,
                fontSize: 24.0,
                fontWeight: FontWeight.bold),
          ),
          descrip(desc),
        ],
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
      ),
    );
  }
}

Widget descrip(String desc) {
  return Padding(
    padding: EdgeInsets.only(top: 10.0),
    child: Text(
      desc ?? ("No description Added"),
      style: TextStyle(
        fontSize: 16.0,
        height: 1.5,
      ),
    ),
  );
}

class NoScrollBehaviour extends ScrollBehavior {
  //To remove the glow while scrolling .
  //update listview with scrollconfig widget and give behaviour this class name.
  Widget buildviewportchrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}
