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
        backgroundColor: Colors.grey[600],
        leading: Icon(Icons.camera_enhance),
        title: Text("Instagram"),
        automaticallyImplyLeading: false,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.send),
          )
        ],
      ),
      body: ListView.builder(
        itemCount: getFeeds().length,
        itemBuilder: (context, index) => PostItem(feed: getFeeds()[index]),
      ),
    );
  }
}
