import 'package:flutter/material.dart';
import 'package:hw2/fruit_image.dart';
import 'package:hw2/product.dart';
import 'package:provider/provider.dart';
import 'cartModel.dart';

class CartList extends StatefulWidget {
  const CartList({super.key});
  @override
  State<CartList> createState() => _CartListState();
}

class _CartListState extends State<CartList> {
  int total_price = 0;
  var furit_image_path = fruit_image();

  @override
  Widget build(BuildContext context) {
    final cart = context.watch<cartModel>();

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Shopping cart',
          style: TextStyle(fontFamily: 'bold', fontSize: 30),
        ),
      ),
      body: ListView.builder(
        itemCount: cart.items.length,
        itemBuilder: (context, index) {
          final Product product = cart.items[index];
          return ListTile(
            title: Text(product.title),
            subtitle: Text('${product.price}원'),
            leading: Image.asset(
              furit_image_path.return_image_path(product.title),
            ),
            trailing: IconButton(
              onPressed: () {
                context.read<cartModel>().removeFromCart(product);
              },
              icon: Icon(Icons.remove),
            ),
          );
        },
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          '총 합계: ${cart.totalPrice}원',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
