import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
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
              child: GridView.builder(
                  itemCount: 4,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, childAspectRatio: 1 / 1.3),
                  itemBuilder: (context, index) {
                    return null;

                    // return MyTile();
                  }),
            )
          ],
        ),
      ),
    );
  }
}
