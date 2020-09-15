import 'package:flutter/material.dart';

void main() {
  runApp(MessageCard());
}

class MessageCard extends StatefulWidget {
  @override
  _MessageCardState createState() => _MessageCardState();
}

class _MessageCardState extends State<MessageCard> {
  TextEditingController control = new TextEditingController();
  String message = "Messages";
  Color textcolor = Colors.red;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(" My Message Card"),
          centerTitle: true,
          backgroundColor: textcolor,
        ),
        body: ListView(
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Container(
                height: 360,
                width: 400,
                color: textcolor,
                child: Center(
                  child: Text(message),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                controller: control,
                onChanged: (String value) {
                  setState(() {
                    message = value;
                  });
                },
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  border:
                      OutlineInputBorder(), // to add border around the widget
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: textcolor),
                  ), //adjusting the color of border
                  prefixIcon: Icon(Icons.edit, color: textcolor),
                  hintText: "Your Message",
                  helperText: "You can write your message",
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: RaisedButton(
                onPressed: () {
                  setState(() {
                    control.clear();
                  });
                },
                child: Text(
                  "Clear the text",
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
                color: textcolor,
              ),
            ),
            Card(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          textcolor = Colors.red;
                        });
                      },
                      child: CircleAvatar(
                        backgroundColor: Colors.red,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          textcolor = Colors.blue;
                        });
                      },
                      child: CircleAvatar(
                        backgroundColor: Colors.blue,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          textcolor = Colors.pink;
                        });
                      },
                      child: CircleAvatar(
                        backgroundColor: Colors.pink,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          textcolor = Colors.green;
                        });
                      },
                      child: CircleAvatar(
                        backgroundColor: Colors.green,
                      ),
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
