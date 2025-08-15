import 'package:flutter/material.dart';
import 'package:hw2/fruit_image.dart';
import 'package:hw2/product.dart';

class ProductDetailPage extends StatelessWidget {
  final Product product;
  ProductDetailPage({super.key, required this.product});

  var furit_path = fruit_image();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(product.title)),
      body: SafeArea(
        child: Column(
          children: [
            Image.asset(furit_path.return_image_path(product.title)),
            Expanded(child: SingleChildScrollView(child: Text(product.desc))),
            TextButton(
              onPressed: () {},
              child: Text('${product.price}원에 구입하기'),
            ),
          ],
        ),
      ),
    );
  }
}
