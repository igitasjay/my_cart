import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_cart/component/my.tile.dart';
import 'package:my_cart/model/cart.model.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.black,
        child: const Icon(Icons.shopping_bag),
      ),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              "Good morning, Joe!",
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 6),
            Text(
              "Pick a sweet order right here",
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                fontSize: 32,
              ),
            ),
            const Divider(),
            const Text("Sweet items"),
            Expanded(
              child: Consumer<CartModel>(
                builder: (context, value, child) {
                  return GridView.builder(
                    itemCount: 4,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1 / 1.5,
                      mainAxisSpacing: 12,
                      crossAxisSpacing: 12,
                    ),
                    itemBuilder: (context, index) {
                      return MyTile(
                        name: value.shopItems[index][0],
                        price: value.shopItems[index][1],
                        imagePath: value.shopItems[index][2],
                        color: value.shopItems[index][3],
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
