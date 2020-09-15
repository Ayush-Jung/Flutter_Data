import 'package:flutter/material.dart';

void main() {
  runApp(MessageCard());
}

class MessageCard extends StatefulWidget {
  @override
  _MessageCardState createState() => _MessageCardState();
}

class _MessageCardState extends State<MessageCard> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(" My Message Card"),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: ListView(
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Container(
                height: 360.0,
                color: Colors.red,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.edit, color: Colors.red),
                  hintText: "Your Message",
                  helperText: "You can write your message",
                ),
              ),
            ),
            RaisedButton(
              onPressed: () {},
              child: Text(
                "Clear the text",
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),
              color: Colors.red,
            ),
            Card(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.red,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.blue,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.pink,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.green,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
