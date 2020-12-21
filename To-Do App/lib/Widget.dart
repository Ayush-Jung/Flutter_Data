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
          Padding(
            padding: EdgeInsets.only(top: 10.0),
            child: Text(
              desc ?? ("No description Added"),
              style: TextStyle(
                fontSize: 16.0,
                height: 1.5,
              ),
            ),
          ),
        ],
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
      ),
    );
  }
}

class ToDoCheck extends StatelessWidget {
  final String text;
  final bool isDone;

  ToDoCheck({this.text, @required this.isDone});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 24.0),
      child: Row(
        children: [
          Container(
            height: 25.0,
            width: 25.0,
            decoration: BoxDecoration(
              border: isDone
                  ? null
                  : Border.all(color: Color(0xFF7349FE), width: 1.5),
              color: isDone ? Color(0xFF7349FE) : Colors.transparent,
              borderRadius: BorderRadius.circular(6.0),
            ),
            child: Image(
              image: AssetImage("assets/images/check_icon.png"),
            ),
          ),
          SizedBox(
            width: 10.0,
          ),
          Text(
            text ?? "(UnNamed ToDo)",
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: isDone ? FontWeight.bold : FontWeight.w500,
              color: isDone ? Color(0xFF211551) : Color(0XFF86829D),
            ),
          ),
        ],
      ),
    );
  }
}

class NoScrollBehaviour extends ScrollBehavior {
  //To remove the glow while scrolling .
  //update listview with scrollconfig widget and give behaviour this class name.
  Widget buildviewportchrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}
