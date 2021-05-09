import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;
  // final Function delete;
  QuoteCard({this.quote});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: TextStyle(
                color: Colors.grey[400],
                fontSize: 20.0,
              ),
            ),
            SizedBox(height: 5.0),

            Text(
              quote.author,
              style: TextStyle(
                color: Colors.grey[400],
                fontSize: 20.0,
              ),
            ),
            // SizedBox(height: 8.0),
            // FlatButton.icon(onPressed:delete
            //     , icon: Icon(Icons.delete)
            //     , label: Text('Delete')
            // )
          ],
        ),
      ),
    );
  }
}
