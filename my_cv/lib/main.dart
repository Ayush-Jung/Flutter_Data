import 'package:flutter/material.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("MY_CV"),
              centerTitle: true,
            ),
            //In case if your data exceed the screen limits use can use this scroollView widget.
            body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Card(
                    elevation: 3.0,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 30.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage('ayush.jpg'),
                            radius: 50,
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            "Ayush Jung Karki",
                            style: TextStyle(fontSize: 25),
                          ),
                          Text(
                            "App Developer",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 15.0),
                          Text(
                            "I am Ayush Jung karki and I am a Student who wants to master in flutetr.Besides this i have completed android training as well as flutter course from udemy. Recently i am desiging my own app called HamroDrink which can provides a services of alcohol as well as meat and snacks. ",
                            style: TextStyle(fontSize: 15.0),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 2.0),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text(
                      "Social Links:",
                      style: TextStyle(fontSize: 15.0),
                    ),
                  ),
                  Card(
                    elevation: 2.0,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          IconButton(
                              icon: Icon(EvaIcons.facebook),
                              onPressed: () {
                                launch(
                                    "https:/www.facebook.com/Ayush Jung Karki");
                              },
                              color: Colors.blue[600]),
                          IconButton(
                              icon: Icon(EvaIcons.github),
                              onPressed: () {
                                launch("https://github.com/Ayush-Jung");
                              },
                              color: Colors.black),
                          IconButton(
                              icon: Icon(EvaIcons.twitter),
                              onPressed: () {
                                launch("https:/twitter/Ayush_Jung_karki");
                              },
                              color: Colors.blue),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 2.0),
                  Card(
                    elevation: 3.0,
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "http://techtrendske.co.ke/wp-content/uploads/2017/08/Web-Development.png"),
                      ),
                      title: Text(
                        "Web Development",
                        style: TextStyle(fontSize: 15.0),
                      ),
                      subtitle: Text(" HTML,CSS,JavaScript"),
                    ),
                  ),
                  SizedBox(height: 2.0),
                  Card(
                    elevation: 3.0,
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://th.bing.com/th/id/OIP.PijO3e6rOb7Bhmh2bThl1gHaDd?pid=Api&rs=1"),
                      ),
                      title: Text(
                        "App Development",
                        style: TextStyle(fontSize: 15.0),
                      ),
                      subtitle: Text(" Flutter and dart"),
                    ),
                  ),
                ],
              ),
            )));
  }
}
