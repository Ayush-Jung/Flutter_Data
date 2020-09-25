import 'package:flutter/material.dart';
import 'package:instagram_clone/models/feed.dart';

class PostItem extends StatelessWidget {
  Feed feed;
  PostItem({this.feed});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          _buildTopPart(),
          SizedBox(
            height: 5.0,
          ),
          _buildImage(context),
          SizedBox(
            height: 5.0,
          ),
          _buildReaction()
        ],
      ),
    );
  }

  Widget _buildTopPart() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.amber,
                backgroundImage: NetworkImage(feed.postImage),
              ),
              SizedBox(width: 10.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    feed.upLoadedBy,
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    feed.subTitle,
                    style: TextStyle(color: Colors.white, fontSize: 12.0),
                  )
                ],
              ),
            ],
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert, color: Colors.white),
          ),
        ],
      ),
    );
  }

  Widget _buildImage(context) {
    return Image.network(feed.postImage);
  }

  Widget _buildReaction() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Icon(Icons.favorite, color: Colors.white),
            SizedBox(width: 4.0),
            Icon(Icons.insert_comment, color: Colors.white),
            SizedBox(width: 4.0),
            Icon(Icons.send, color: Colors.white),
          ],
        ),
        Icon(Icons.bookmark, color: Colors.white),
      ],
    );
  }
}
