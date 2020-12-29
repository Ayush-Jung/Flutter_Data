import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/Provider/titleNotifier.dart';
import 'package:flutter_complete_guide/Widget.dart';
import 'package:provider/provider.dart';
import 'package:flutter_complete_guide/screens/taskpage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                    child: Consumer<TitleNotifier>(builder: (
                      context,
                      addTitle,
                      _,
                    ) {
                      return ScrollConfiguration(
                        behavior: NoScrollBehaviour(),
                        child: ListView.builder(
                            itemCount: addTitle.titlelist.length,
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          TaskPage(task: null),
                                    ),
                                  );
                                },
                                child: Taskcard(
                                  title: addTitle.titlelist[index].title,
                                  desc: addTitle.titlelist[index].description,
                                ),
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
                      MaterialPageRoute(
                        builder: (context) => TaskPage(
                          task: null,
                        ),
                      ),
                    );
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
