import 'package:flutter/material.dart';

class MyTile extends StatelessWidget {
  final String name, imagePath, price;
  final Color color;
  const MyTile({
    super.key,
    required this.name,
    required this.price,
    required this.color,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color.withAlpha(100),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Image.asset(imagePath),
          ),
          Text(
            name,
            style: const TextStyle(fontSize: 18, color: Colors.white),
          ),
          Text(
            price,
            style: const TextStyle(fontSize: 18, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
