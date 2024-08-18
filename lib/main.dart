import 'package:flutter/material.dart';
import 'package:my_cart/pages/intro.page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Cart',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xf0f0f0ff),
        // appBarTheme: const AppBarTheme(
        //   backgroundColor: Color(0xf0f0f0ff),
        //   surfaceTintColor: Color(0xf0f0f0f0),
        //   shadowColor: Color(0xf0f0f0f0),
        //   elevation: 0,
        // ),
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
    );
  }
}
