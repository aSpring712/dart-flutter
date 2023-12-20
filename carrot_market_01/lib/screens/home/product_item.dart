import 'package:flutter/material.dart';
import 'package:flutter_class_04/models/Product.dart';
import 'package:flutter_class_04/screens/home/product_detail.dart';

class ProductItem extends StatelessWidget {

  // 규칙1. const 생성자는 초기화 되어야 하는 변수는 반드시 상수 값이 되어야 한다.
  // 상수 -> const(compile 시점에 상수화), final
  /* const Product product; // -> error -> compile 시점에 전달받지 못함(메모리에 올라가야 전달받을 수 있음) -> 메모리가 실행되는 시점에 전달받을 수 있도록 final
  * */
  final Product product;
  const ProductItem({required this.product, super.key}); // 생성자 의존 주입

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 135.0,
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            // Image.asset(name) // local에 있는 이미지를 올리는 것
            child: Image.network( // 통신을 통해 받아올 때 쓰는 것
              product.urlToImage,
              width: 115,
              height: 115,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 16.0),
          ProductDetail(),
        ],
      ),
    );
  }
}
