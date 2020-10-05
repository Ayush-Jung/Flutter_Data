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
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text(
                "Ayush Jung Karki",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
              ),
              accountEmail: Text("evildevilayush@gmail.com"),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
              ),
              decoration: BoxDecoration(color: Colors.red),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text(
                  " My Home",
                  style: TextStyle(fontSize: 15.0),
                ),
                leading: Icon(Icons.home, color: Colors.blue),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text(
                  "My Account",
                  style: TextStyle(fontSize: 15.0),
                ),
                leading: Icon(
                  Icons.person,
                  color: Colors.blue,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text(
                  "My Orders",
                  style: TextStyle(fontSize: 15.0),
                ),
                leading: Icon(
                  Icons.shopping_basket,
                  color: Colors.blue,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text(
                  "Categories",
                  style: TextStyle(fontSize: 15.0),
                ),
                leading: Icon(
                  Icons.dashboard,
                  color: Colors.blue,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text(
                  "Favourites",
                  style: TextStyle(fontSize: 15.0),
                ),
                leading: Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
              ),
            ),
            Divider(),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text(
                  "Settings",
                  style: TextStyle(fontSize: 15.0),
                ),
                leading: Icon(
                  Icons.settings,
                  color: Colors.blue,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text(
                  "About us",
                  style: TextStyle(fontSize: 15.0),
                ),
                leading: Icon(
                  Icons.help,
                  color: Colors.blue,
                ),
              ),
            ),
          ],
        ),
      ),
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
