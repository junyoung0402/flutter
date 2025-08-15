import 'package:flutter/material.dart';
import 'package:hw2/fruit_image.dart';
import 'package:hw2/product.dart';
import 'package:hw2/fruit_image.dart';

class CartList extends StatefulWidget {
  final List<Product> cartList;
  const CartList({super.key, required this.cartList});

  @override
  State<CartList> createState() => _CartListState();
}

class _CartListState extends State<CartList> {
  int total_price = 0;
  var furit_image_path = fruit_image();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Shopping cart',
          style: TextStyle(fontFamily: 'bold', fontSize: 30),
        ),
      ),
      body: ListView.builder(
        itemCount: widget.cartList.length,
        itemBuilder: (context, index) {
          final Product product = widget.cartList[index];
          return ListTile(
            title: Text(product.title),
            subtitle: Text('${product.price}원'),
            leading: Image.asset(
              furit_image_path.return_image_path(product.title),
            ),
            trailing: Icon(Icons.remove),
          );
        },
      ),
    );
  }
}
