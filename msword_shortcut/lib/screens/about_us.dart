import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About Us"),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Container(
        child: Column(
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "This app provides all the necessary shortcuts key for MicroSoft Word.",
                  style: TextStyle(color: Colors.white, fontSize: 18.0),
                ),
              ),
            ),
            RaisedButton(
              color: Colors.tealAccent,
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                "Back",
                style: TextStyle(fontSize: 20.0, color: Colors.black),
              ),
            )
          ],
        ),
      ),
    );
  }
}
