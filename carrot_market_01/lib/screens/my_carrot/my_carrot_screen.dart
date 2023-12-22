import 'package:flutter/material.dart';
import 'package:flutter_class_04/models/IconMenu.dart';
import 'package:flutter_class_04/screens/my_carrot/card_icon_menu.dart';
import 'package:flutter_class_04/screens/my_carrot/my_carrot_header.dart';

// 1. 기본 화면 구성
class MyCarrotScreen extends StatelessWidget {
  const MyCarrotScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text('나의 당근'),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.settings))
        ],
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(0.5),
          child: Divider(
            thickness: 0.5,
            height: 0.5,
            color: Colors.grey,
          ),
        )
      ),
      body: ListView(
        children: [
          // my carrot header() // -> 코드 길어지면 관리하기 힘드므로 따로 뺌
          MyCarrotHeader(),
          const SizedBox(height: 8.0),
          CardIconMenu(iconMenuList: iconMenu1),
          const SizedBox(height: 8.0),
          CardIconMenu(iconMenuList: iconMenu2),
          const SizedBox(height: 8.0),
          CardIconMenu(iconMenuList: iconMenu3),
        ],
      )
    );
  }
}
