import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone/models/feed.dart';
import 'package:instagram_clone/screens/feed_detail_screen.dart';

class PostItem extends StatefulWidget {
  final Feed feed;
  PostItem({this.feed});

  @override
  _PostItemState createState() => _PostItemState();
}

class _PostItemState extends State<PostItem> {
  bool like, save, sendButton;

  @override
  void initState() {
    super.initState();
    like = widget.feed.like;
    save = widget.feed.save;
    sendButton = false;
  }

  toggleLike() {
    setState(() {
      like = !like;
    });
    widget.feed.like = like;
  }

  toggleSave() {
    setState(() {
      save = !save;
    });
    widget.feed.save = save;
  }

  toggleSend() {
    setState(() {
      sendButton = !sendButton;
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
        Navigator.push(
            context,
            CupertinoPageRoute(
                builder: (BuildContext context) =>
                    FeedDetailScreen(feed: widget.feed)));
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildTopPart(),
            _buildImage(context),
            SizedBox(height: 10.0),
            _buildReaction(),
            SizedBox(height: 10.0),
            _buildCaption(),
            SizedBox(height: 10.0),
            _buildCommentSection(),
          ],
        ),
      ),
    );
  }

  Widget _buildTopPart() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 15.0,
                backgroundImage: NetworkImage(widget.feed.profileImage),
              ),
              SizedBox(width: 12.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.feed.upLoadedBy,
                    style: TextStyle(color: Colors.white),
                  ),
                  widget.feed.sponsored
                      ? Text(
                          "Sponsored",
                          style: TextStyle(color: Colors.white, fontSize: 10.0),
                        )
                      : SizedBox(),
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
    return InkWell(
      onDoubleTap: () {},
      child: Image.network(
        widget.feed.postImage,
        height: 200.0,
        width: MediaQuery.of(context).size.width,
      ),
    );
  }

  Widget _buildReaction() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              tapIcon(like ? Icons.favorite : Icons.favorite_border, toggleLike,
                  like ? Colors.red : Colors.white),
              SizedBox(width: 18.0),
              tapIcon(Icons.comment, () {}, Colors.white),
              SizedBox(width: 18.0),
              tapIcon(Icons.send, () {}, Colors.white),
            ],
          ),
          tapIcon(save ? Icons.bookmark : Icons.bookmark_border, toggleSave,
              Colors.white),
        ],
      ),
    );
  }

  Widget tapIcon(IconData iconData, var onTap, iconColor) {
    return InkWell(
      onTap: onTap,
      child: Icon(
        iconData,
        color: iconColor,
        size: 28.0,
      ),
    );
  }

  Widget _buildCaption() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
              text: widget.feed.upLoadedBy,
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              children: [
                TextSpan(
                  text: '${widget.feed.caption}',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w300),
                )
              ],
            ),
          ),
          SizedBox(height: 5.0),
          widget.feed.commentCount > 0
              ? Text(
                  'View all ${widget.feed.commentCount} comments',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.5),
                  ),
                )
              : SizedBox()
        ],
      ),
    );
  }

  _buildCommentSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 12.0,
                backgroundImage: NetworkImage(widget.feed.profileImage),
              ),
              SizedBox(
                width: 12.0,
              ),
              Expanded(
                child: TextField(
                  onChanged: (value) {
                    if (value.isEmpty) {
                      setState(() {
                        sendButton = false;
                      });
                    } else {
                      setState(() {
                        sendButton = true;
                      });
                    }
                  },
                  maxLines: 1,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Add a comment...',
                      hintStyle:
                          TextStyle(color: Colors.white.withOpacity(0.4))),
                  style: TextStyle(color: Colors.white),
                ),
              ),
              sendButton
                  ? IconButton(
                      icon: Icon(
                        Icons.send,
                        size: 20.0,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    )
                  : SizedBox()
            ],
          ),
          Text(
            '${widget.feed.timeAgo}',
            style:
                TextStyle(color: Colors.white.withOpacity(0.5), fontSize: 10.0),
          )
        ],
      ),
    );
  }
}
