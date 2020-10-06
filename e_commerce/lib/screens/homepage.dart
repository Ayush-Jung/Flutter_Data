import 'package:e_commerce/component/drawer.dart';
import 'package:e_commerce/component/products.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:e_commerce/component/horizontal_listview.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
      height: 200.0,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/m2.jpg'),
          AssetImage('images/w1.jpeg'),
          AssetImage('images/w4.jpeg'),
          AssetImage('images/c1.jpg'),
          AssetImage('images/m1.jpeg'),
          AssetImage('images/w3.jpeg'),
        ],
        autoplay: false,
        //undo comets if you want animation and make auto play true fo this.
        // animationCurve: Curves.fastOutSlowIn,
        // animationDuration: Duration(milliseconds: 1000),
        dotSize: 4.0,
        //color the dot from this.
        //dotColor: Colors.red,
        indicatorBgPadding: 2.0,
      ),
    );
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text("Fabshop"),
        backgroundColor: Colors.red,
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            color: Colors.white,
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart),
            color: Colors.white,
            onPressed: () {},
          ),
        ],
      ),
      drawer: DrawerData(),
      body: ListView(
        children: [
          //imgage carousel begins here
          image_carousel,
          //padding for categories section.
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Categories",
              style: TextStyle(fontSize: 16.0),
            ),
          ),

          //Horizontal listview begins here.
          HorizontalList(),
          SizedBox(height: 8.0),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Recent Products",
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            child: Products(),
          )
        ],
      ),
    );
  }
}
