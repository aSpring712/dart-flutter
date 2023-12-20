import 'package:flutter/material.dart';
import 'package:flutter_class_04/screens/main_screen.dart';
import 'package:flutter_class_04/theme.dart';

void main() {
  runApp(const CarrotMarketUI());
}

class CarrotMarketUI extends StatelessWidget {
  const CarrotMarketUI({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'carrot_market_ui',
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
      theme: theme(),
    );
  }
}
