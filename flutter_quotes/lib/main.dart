import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Quotelist(),
    ));

class Quotelist extends StatefulWidget {
  @override
  _QuoteState createState() => _QuoteState();
}

class _QuoteState extends State<Quotelist> {
  // Uri url = //jsonplaceholder.typicode.com/photos;
//   Future<Quote> fetchQuotes() async {
//     await http.
// return ;
//   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Quotes'),
        centerTitle: true,
        backgroundColor: Colors.amber[800],
      ),
      body: Column(),
    );
  }
}
