import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  final List _shopItems = [
    ["Avocado", "4.00", "assets/avocado.png", Colors.green],
    ["Banana", "3.10", "assets/banana.png", Colors.yellow],
    ["Chicken", "14.08", "assets/chicken.png", Colors.brown],
    ["Water", "12.30", "assets/water.png", Colors.blue],
  ];

  final List _cartItems = [];

  List get shopItems => _shopItems;
  List get cartItems => _cartItems;

  // Add item to cart
  void addItem(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  // Remove item from cart
  removeItem(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  // Calculate the total price
  double calculateTotal() {
    double total = 0.0;
    for (var item in _cartItems) {
      total += double.parse(item[1]);
    }
    return total;
  }
}
