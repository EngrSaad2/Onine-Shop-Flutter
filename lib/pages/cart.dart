import 'package:flutter/material.dart';
import 'package:onlineshop/components/cart_products.dart';
class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.0,
        backgroundColor: Colors.red,
        title: Text('Shopping Cart'),
        actions: <Widget>[
          new IconButton(
              icon: Icon(Icons.search), color: Colors.white, onPressed: () {}),
        ],
      ),

      body: new Cart_products(),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Expanded(
              child: ListTile(
                title: new Text("Total Amount: "),
                subtitle: Text("\Tk 5200"),
              ),
            ),
            Expanded(
                child: new MaterialButton(
                    onPressed: () {},
                child: new Text("Check out", style: TextStyle(color: Colors.white)),
                color: Colors.red,
                ))
          ],
        ),
      ),
    );
  }
}
