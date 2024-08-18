import 'package:flutter/material.dart';
import 'package:my_cart/model/cart.model.dart';
import 'package:my_cart/pages/intro.page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => CartModel(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'My Cart',
        theme: ThemeData(
          scaffoldBackgroundColor: const Color(0xf0ffffff),
          filledButtonTheme: FilledButtonThemeData(
            style: FilledButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 16),
              backgroundColor: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
          useMaterial3: false,
        ),
        home: const IntroPage(),
      ),
    );
  }
}
