import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Category(
            imagelocation: 'images/tshirt.png',
            imagecaption: 'T-Shirt',
          ),
          Category(
            imagelocation: 'images/dress.png',
            imagecaption: 'Dress',
          ),
          Category(
            imagelocation: 'images/jeans.png',
            imagecaption: 'Pants',
          ),
          Category(
            imagelocation: 'images/formal.png',
            imagecaption: 'Formal',
          ),
          Category(
            imagelocation: 'images/shoe.png',
            imagecaption: 'Shoes',
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String imagelocation;
  final String imagecaption;

  Category({this.imagecaption, this.imagelocation});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: Card(
          child: Container(
            width: 100.0,
            child: ListTile(
              title: Image.asset(
                imagelocation,
                width: 100.0,
                height: 69.0,
              ),
              subtitle: Container(
                alignment: Alignment.topCenter,
                child: Text(imagecaption),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
