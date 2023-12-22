import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_class_04/models/Product.dart';
import 'package:flutter_class_04/theme.dart';
import 'package:intl/intl.dart';

class ProductDetail extends StatelessWidget {
  final Product product;
  const ProductDetail({required this.product, super.key}); // -> 상수 생성자

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        // 주축 방향은 수직이지만 정렬을 왼쪽 정렬을 하고싶음 -> 즉 주축 방향이 아님
        crossAxisAlignment: CrossAxisAlignment.start, // 왼쪽 정렬
        children: [
          Text(product.title, style: textTheme().bodyLarge, ),
          const SizedBox(height: 4.0),
          Text('${product.address} · ${product.publishedAt}'),
          const SizedBox(height: 4.0),
          Text('${numberFormat(product.price)}원'),
          // 남은 공간에서 가장 아래로 갈 수 있도록
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end, // 우측 정렬
            children: [
              // 아이콘, 글자, 아이콘, 글자
              Visibility(
                visible: product.commentsCount > 0,
                child: _buildIcons(
                    product.commentsCount, CupertinoIcons.chat_bubble_2),
              ),
              const SizedBox(width: 8.0),
              Visibility(
                visible: product.heartCount > 0,
                child: _buildIcons(product.heartCount, CupertinoIcons.heart),
              ),
            ],
          ),
        ],
      ),
    );
  } // end of build function
  String numberFormat(String price) {
    final formatter = NumberFormat('#,###');
    return formatter.format(int.parse(price));
  }

  Widget _buildIcons(int count, IconData iconData) {
    // 수평으로 자식 2개 배치
    return Row(
      children: [
        Icon(iconData, size: 14.0),
        const SizedBox(width: 4.0),
        Text('$count')
      ],
    );
  }
}
