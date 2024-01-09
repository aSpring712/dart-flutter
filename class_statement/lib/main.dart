import 'package:class_statement/stateful_widget/s_home_1.dart';
import 'package:flutter/material.dart';

import 'inherited_widget/s_home_2.dart';
import 'provider/s_home_3.dart';
import 'riverpod/s_home_4.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: HomeScreen1(),
      // home: HomeScreen2(),
      // home: HomeScreen3(),
      home: HomeScreen4(),
    );
  }
}
