import 'package:flutter/material.dart';

class Product {
  String title;
  String summary;
  int price;
  String desc;
  Color color;
  Product({
    required this.title,
    required this.summary,
    required this.price,
    required this.desc,
    required this.color,
  });
}
