import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/databse_helper.dart';
import 'package:flutter_complete_guide/models/task.dart';
import '../Widget.dart';

class TaskPage extends StatefulWidget {
  @override
  _TaskPageState createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 24.0),
          child: Stack(
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(24.0),
                          child: Image(
                            image:
                                AssetImage("assets/images/ack_arrow_icon.png"),
                          ),
                        ),
                      ),
                      Expanded(
                        child: TextField(
                          onSubmitted: (value) async {
                            if (value != "") {
                              DatabaseHelper _dbhelper = DatabaseHelper();
                              Task _newTask = Task(
                                title: value,
                              );
                              await _dbhelper.insertTask(_newTask);
                              print("sucessfully added $value");
                            }
                          },
                          decoration: InputDecoration(
                              hintText: "Enter Task Title!",
                              border: InputBorder.none,
                              fillColor: Colors.black38),
                          style: TextStyle(
                              fontSize: 30.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24.0),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Write your description here!!"),
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  ToDoCheck(
                    text: "Write your first todo",
                    isDone: true,
                  ),
                  ToDoCheck(
                    text: "Write your second todo",
                    isDone: true,
                  ),
                  ToDoCheck(
                    // text: "Write your third todo",
                    isDone: false,
                  ),
                  ToDoCheck(
                    isDone: true,
                  ),
                ],
              ),
              Positioned(
                right: 24.0,
                bottom: 0.0,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TaskPage()),
                    );
                  },
                  child: Container(
                    width: 60.0,
                    height: 60.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        gradient: LinearGradient(
                            colors: [Colors.red[800], Colors.red[500]],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight)),
                    child: Image(
                      image: AssetImage("assets/images/delete_icon.png"),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
