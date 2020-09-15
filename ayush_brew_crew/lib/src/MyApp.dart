import 'package:flutter/material.dart';


class First extends StatefulWidget {

  @override
  _FirstState createState() => _FirstState();


}

class _FirstState extends State<First> {

  int counter=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: (){
            setState(() {
              counter+=1;
            });
          },
        ),
        appBar: AppBar(
          title:Text(' MyProject'),
          centerTitle: true,
        ),
        body: Text('$counter'),
      ),
    );
  }
}
