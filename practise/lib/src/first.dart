import 'package:flutter/material.dart';
import 'models/imsge_model.dart';
import 'dart:convert';
import 'package:http/http.dart';
import 'widget/image_list.dart';

class First extends StatefulWidget {
  @override
  _FirstState createState() => _FirstState();
  setState(){
    return _FirstState();
  }
}
class _FirstState extends State<First> {

  List<ImageModel> images=[];

void fetchImage() async{
  counter++;
  var response= await get('http://jsonplaceholder.typicode.com/photos/$counter');
  var imageModel=ImageModel.fromJson(json.decode(response.body));

  setState(() {
    images.add(imageModel);
  });

}
  int counter=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed:fetchImage,
        ),
        appBar: AppBar(
          title:Text(' MyProject'),
          centerTitle: true,
        ),  body: ImageList(images),

        ),
    ); }
}
