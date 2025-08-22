import 'package:flutter/material.dart';

class Product with ChangeNotifier{
  String title;
  String summary;
  int id;
  int price;
  String desc;
  Color color;
  Product({
    required this.title,
    required this.summary,
    required this.id,
    required this.price,
    required this.desc,
    required this.color,
  });
}
