import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_class_04/models/Product.dart';
import 'package:flutter_class_04/screens/home/product_item.dart';

class HomeScreen extends StatelessWidget { // 한 번 렌더링하면 상호작용이 일어나도 다시 렌더링 할 필요없음
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Row(
          children: [
            Text('좌동'),
            SizedBox(width: 4.0), // 이만큼 공간을 차지하라
            Icon(
              CupertinoIcons.chevron_down, size: 15.0,
            ),
          ],
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.search)),
          IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.list_dash)),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(0.5),
          child: Divider(thickness: 0.5, height: 0.5, color: Colors.grey,),
        ),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            // productList[index] --> 0 : product();
            return ProductItem(product: productList[index]);
          },
          separatorBuilder: (context, index) => Divider( // 각 아이템 마다 구분을 시킬 수 있음
            height: 0,
            indent: 16,
            endIndent: 16,
            color: Colors.grey,
          ),
          itemCount: productList.length
      ),
    );
  }
}
