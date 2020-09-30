import 'package:flutter/material.dart';
import 'package:instagram_clone/widgets/post_card.dart';
import 'package:instagram_clone/models/feed.dart';

class HomePgae extends StatefulWidget {
  @override
  _HomePgaeState createState() => _HomePgaeState();
}

class _HomePgaeState extends State<HomePgae> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.white.withOpacity(0.1),
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Icon(
              Icons.camera_enhance,
              size: 32.0,
            ),
            SizedBox(width: 10.0),
            Text('Instagram'),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.send),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: getFeeds().length,
        itemBuilder: (context, index) => PostItem(feed: getFeeds()[index]),
      ),
    );
  }
}
