import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../models/imsge_model.dart';

class ImageList extends StatelessWidget {

  final List<ImageModel>images;
  ImageList(this.images);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: images.length,
        itemBuilder: (context,int index){
      return  buildImage(images[index]);
    },
    );
  }
  Widget buildImage(ImageModel image){
    return Container(
      decoration: BoxDecoration(
          border:Border.all(
              color: Colors.grey
          )
      ),
      margin:EdgeInsets.all(20.0),
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: <Widget> [

          Image.network(image.url),
          SizedBox(height:8.0),
          Text(image.title),
        ],
      ),
    );
  }
}
