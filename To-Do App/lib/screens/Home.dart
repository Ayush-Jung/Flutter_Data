import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/Widget.dart';
import 'package:flutter_complete_guide/databse_helper.dart';
import 'package:flutter_complete_guide/screens/taskpage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  DatabaseHelper _dbhelper = DatabaseHelper();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          color: Color(0xFFF6F6F6),
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 30.0, top: 32.0),
                    child: Image(
                      image: AssetImage('assets/images/logo.png'),
                    ),
                  ),
                  Expanded(
                    child: FutureBuilder(
                        initialData: [],
                        future: _dbhelper.getTask(),
                        builder: (context, snapshot) {
                          return ScrollConfiguration(
                            behavior: NoScrollBehaviour(),
                            child: ListView.builder(
                                itemCount: snapshot.data.length,
                                itemBuilder: (context, index) {
                                  return Taskcard(
                                    title: snapshot.data[index].title,
                                  );
                                }),
                          );
                        }),
                  ),
                ],
              ),
              Positioned(
                right: 0.0,
                bottom: 20.0,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TaskPage()),
                    ).then((value) {
                      setState(() {});
                    });
                  },
                  child: Container(
                    width: 60.0,
                    height: 60.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      gradient: LinearGradient(
                        colors: [Colors.blue[800], Colors.blue[400]],
                      ),
                    ),
                    child: Image(
                      image: AssetImage("assets/images/add_icon.png"),
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
