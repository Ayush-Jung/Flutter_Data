import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

class Productdetails extends StatefulWidget {
  final product_detail_name;
  final product_detail_new_price;
  final product_detail_old_price;
  final product_detail_picture;

  Productdetails(
      {this.product_detail_name,
      this.product_detail_new_price,
      this.product_detail_old_price,
      this.product_detail_picture});
  @override
  _ProductdetailsState createState() => _ProductdetailsState();
}

class _ProductdetailsState extends State<Productdetails> {
  @override
  Widget build(BuildContext context) {
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
      body: ListView(
        children: [
          Container(
            height: 300.0,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.product_detail_picture),
              ),
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(
                    widget.product_detail_name,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                  ),
                  title: Row(
                    children: [
                      Expanded(
                          child: Text(
                        "\$${widget.product_detail_old_price}",
                        style: TextStyle(
                            color: Colors.grey,
                            decoration: TextDecoration.lineThrough),
                      )),
                      Expanded(
                          child: Text(
                        "\$${widget.product_detail_new_price}",
                        style: TextStyle(
                          color: Colors.red,
                        ),
                      )),
                    ],
                  ),
                ),
              ),
            ),
          ),
          //=====first buttons of buy product=====
          Row(
            children: [
              //====the size buttons====
              Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  elevation: 0.2,
                  color: Colors.white,
                  textColor: Colors.grey,
                  child: Row(
                    children: [
                      Expanded(
                        child: Text("Size"),
                      ),
                      Expanded(
                        child: Icon(Icons.arrow_drop_down),
                      )
                    ],
                  ),
                ),
              ),
              //====the size buttons====
              Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  elevation: 0.2,
                  color: Colors.white,
                  textColor: Colors.grey,
                  child: Row(
                    children: [
                      Expanded(
                        child: Text("Colors"),
                      ),
                      Expanded(
                        child: Icon(Icons.arrow_drop_down),
                      )
                    ],
                  ),
                ),
              ),
              //====the size buttons====
              Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  elevation: 0.2,
                  color: Colors.white,
                  textColor: Colors.grey,
                  child: Row(
                    children: [
                      Expanded(
                        child: Text("Qnty"),
                      ),
                      Expanded(
                        child: Icon(Icons.arrow_drop_down),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          //===the second Button====
          Row(
            children: [
              Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.red,
                  textColor: Colors.white,
                  elevation: 0.2,
                  child: Text("Buy now"),
                ),
              ),
              IconButton(icon: Icon(Icons.arrow_drop_down), onPressed: () {}),
              IconButton(
                  icon: Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                  onPressed: () {
                    return Toast.show("Liked!", context);
                  }),
            ],
          )
        ],
      ),
    );
  }
}
