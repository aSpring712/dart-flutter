// w -> 하나의 위젯 또는 컴포넌트
import 'package:class_statement/common/models/vo_catalog.dart';
import 'package:flutter/material.dart';

class CatalogItem extends StatelessWidget {

  // 속성 - 색상, 타이틀 --> 객체. Catalog VO로 만들어 둠
  final Catalog catalog; // 색상, 타이틀이 들어있는 Catalog VO
  final bool isInCart; // 카트에 담겼는지 여부
  // 부모 : Cart, CatalogList -> 의 부모 Catalog 위젯 -> 의 부모 HomeScreen
  // 결국 HomeScreen1의 onPressedCatalog까지 가야 함
  final void Function(Catalog catalog) onPressedCatalog;

  // 생성자
  const CatalogItem({
    super.key,
    required this.catalog,
    required this.isInCart,
    required this.onPressedCatalog
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0), // 똑같은 객체를 다시 만들지 않고 만들어 진 것을 그대로 쓰기 위해 const
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4,
            offset: Offset(0, 2), // x, y
          )
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 24,
            height: 24,
            color: catalog.color,
          ),
          const SizedBox(width: 16.0),
          Expanded(
            child: Text(
              catalog.title,
              style: const TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
          const SizedBox(width: 16.0),
          InkWell(
            onTap: () {
              print("${catalog.title} : 이벤트 발생");
            },
            child: Text(
              isInCart ? '✔' : 'ADD',
              style: TextStyle(
                color: isInCart ? Colors.grey : Colors.green,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}
