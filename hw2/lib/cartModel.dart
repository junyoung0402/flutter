import 'package:flutter/widgets.dart';
import 'package:hw2/product.dart';

class cartModel with ChangeNotifier {
  final List<Product> _items = [];

  List<Product> get items => _items; //getter method

  int get totalPrice {
    int totalprice = 0;
    for (int i = 0; i < _items.length; i++) {
      totalprice += _items[i].price;
    }
    return totalprice;
  }

  void addToCart(Product product) {
    _items.add(product);
    notifyListeners();
  }

  void removeFromCart(Product product) {
    _items.remove(product);
    notifyListeners();
  }
}
