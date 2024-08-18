import 'package:flutter/material.dart';
import 'package:my_cart/model/cart.model.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        title: const Text('Cart'),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Consumer<CartModel>(
        builder: (context, value, child) {
          return Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: value.cartItems.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.symmetric(horizontal: 12)
                          .copyWith(top: 12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: Colors.grey.shade300,
                      ),
                      child: ListTile(
                        leading: Image.asset(value.cartItems[index][2]),
                        title: Text(value.cartItems[index][0]),
                        subtitle: Text("\$${value.cartItems[index][1]}"),
                        trailing: IconButton(
                          onPressed: () {
                            value.removeItem(index);
                          },
                          icon: const Icon(Icons.remove_circle_outline),
                        ),
                      ),
                    );
                  },
                ),
              ),
              Container(
                padding: const EdgeInsets.all(16),
                margin: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Total:',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          value.calculateTotal().toStringAsFixed(2),
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    FilledButton(
                      onPressed: () {},
                      style: FilledButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 8,
                          ),
                          backgroundColor: Colors.transparent,
                          side: const BorderSide(
                            color: Colors.white,
                          )),
                      child: const Row(
                        children: [
                          Text("Pay Now"),
                          SizedBox(width: 6),
                          Icon(Icons.arrow_forward_ios),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
