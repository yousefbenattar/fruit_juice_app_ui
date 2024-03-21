import 'package:flutter/material.dart';
import 'package:fruit_juice_app_ui/home.dart';

import 'shopping.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(textTheme: TextTheme()),
      home:const ShoppingCart()
    );
  }
}
