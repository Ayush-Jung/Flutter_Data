import 'package:flutter/material.dart';
import 'package:flutter_quotes/quote.dart';
import 'quote_Card.dart';

void main()=>runApp(MaterialApp(
    home: Quotelist(),

  ));

class Quotelist extends StatefulWidget {
  @override
  _QuoteState createState() => _QuoteState();
}

class _QuoteState extends State<Quotelist> {

  List<Quote>quotes=[
    Quote(author:'ayush',text: 'this is us'),
    Quote(author:'jung',text: 'this is we'),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Quotes'),
        centerTitle: true,
        backgroundColor: Colors.amber[800],
      ),
body: Column(
  children: quotes.map((quote)=>QuoteCard(
    quote:quote,
    delete:(){
      setState(() {
        quotes.remove(quote);
      });
    }
  )).toList(),
),
    );
  }
}
