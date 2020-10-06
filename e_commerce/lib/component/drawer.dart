import 'package:flutter/material.dart';

class DrawerData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
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
    );
  }
}
