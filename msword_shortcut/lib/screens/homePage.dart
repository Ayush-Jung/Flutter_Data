import 'package:flutter/material.dart';
import 'package:msword_shortcut/feed/data.dart';
import 'package:msword_shortcut/screens/about_us.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:share/share.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              padding: const EdgeInsets.all(0),
              child: Container(
                color: Colors.tealAccent,
                child: Center(
                  child: Text(
                    "Ms Word Guide",
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.pop(context);
              },
              leading: Icon(Icons.home),
              title: Text(
                "Home",
                style: TextStyle(fontSize: 17.0),
              ),
            ),
            //About Us
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AboutUs()),
                );
              },
              leading: Icon(Icons.info_outline),
              title: Text(
                "About Us",
                style: TextStyle(fontSize: 17.0),
              ),
            ),
            //Rate us
            ListTile(
              onTap: () {
                launch("https://github.com/Ayush-Jung/My-Application");
              },
              leading: Icon(Icons.star),
              title: Text(
                "Rate us",
                style: TextStyle(fontSize: 17.0),
              ),
            ),
            //Share us
            ListTile(
              onTap: () {
                Share.share(
                    "Hi download this app from https://github.com/Ayush-Jung/My-Application");
              },
              leading: Icon(Icons.share),
              title: Text(
                "Share",
                style: TextStyle(fontSize: 17.0),
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("MS Word Shortcut"),
        centerTitle: true,
        actions: [
          IconButton(
              icon: Icon(Icons.info_outline),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return AboutUs();
                }));
              }),
        ],
      ),
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          return outLineDesign(index);
        },
      ),
    );
  }

  Widget outLineDesign(index) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.tealAccent,
        child: Text(
          "${index + 1}",
          style: TextStyle(fontSize: 25.0),
        ),
      ),
      title: Text(
        data[index]["key"],
        style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
      ),
      subtitle: Text(
        data[index]["use"],
        style: TextStyle(fontSize: 16.0),
      ),
    );
  }
}
