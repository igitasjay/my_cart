import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  final List _shopItems = [
    ["Avocado", "4.00", "assets/avocado.png", Colors.green],
    ["Banana", "3.10", "assets/banana.png", Colors.yellow],
    ["Chicken", "14.08", "assets/chicken.png", Colors.brown],
    ["Water", "12.30", "assets/water.png", Colors.blue],
  ];
  List get shopItems => _shopItems;
}
