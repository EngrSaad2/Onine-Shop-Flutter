import 'package:flutter/material.dart';

class Cart_products extends StatefulWidget {
  @override
  _Cart_productsState createState() => _Cart_productsState();
}

class _Cart_productsState extends State<Cart_products> {
  var product_on_the_cart = [
    {
      "name": "Blazer",
      "picture": "images/products/blazer1.jpeg",
      "price": 4000,
      "size": "M",
      "color": "Black",
      "quantity": 1,
    },
    {
      "name": "Shoe",
      "picture": "images/products/shoe1.jpg",
      "price": 1200,
      "size": "42",
      "color": "Grey",
      "quantity": 1,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: product_on_the_cart.length,
        itemBuilder: (context, index) {
          return new single_cart_product(
            cart_prod_name: product_on_the_cart[index]["name"],
            cart_prod_color: product_on_the_cart[index]["color"],
            cart_prod_qty: product_on_the_cart[index]["quantity"],
            cart_prod_size: product_on_the_cart[index]["size"],
            cart_prod_price: product_on_the_cart[index]["price"],
            cart_prod_pricture: product_on_the_cart[index]["picture"],
          );
        });
  }
}

class single_cart_product extends StatelessWidget {
  final cart_prod_name;
  final cart_prod_pricture;
  final cart_prod_price;
  final cart_prod_size;
  final cart_prod_color;
  final cart_prod_qty;

  single_cart_product(
      {this.cart_prod_name,
      this.cart_prod_pricture,
      this.cart_prod_price,
      this.cart_prod_size,
      this.cart_prod_color,
      this.cart_prod_qty});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: new Image.asset(cart_prod_pricture, width: 80.0,height: 80.0,),
        title: new Text(cart_prod_name),
        subtitle: new Column(
          children: <Widget>[
            new Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: new Text("Size: "),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: new Text(cart_prod_size, style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),),
                ),
                new Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 8.0, 8.0, 8.0),
                  child: new Text("Color: "),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: new Text(cart_prod_color, style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),),
                ),

              ],
            ),

            Container(
              alignment: Alignment.topLeft,
              child: new Text("\Tk $cart_prod_price", style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold, color: Colors.blue),),

            )
          ],
        ),

        trailing: FittedBox(
          fit: BoxFit.fill,
          child: Column(
            children: <Widget>[
              new IconButton(icon: Icon(Icons.arrow_drop_up), onPressed: (){}),
              new IconButton(icon: Icon(Icons.arrow_drop_down), onPressed: (){}),
            ],
          ),
        ),
      ),
    );
  }


}
