// 전체 화면에서 어디서든 쓸 수 있는 조각 -> flagment
import 'package:class_statement/common/w_catalog_item.dart';
import 'package:flutter/material.dart';

import '../common/models/vo_catalog.dart';

class CartWidget extends StatelessWidget {
  // // 선택된 카탈로그 정보를 받고, 콜백 함수까지 전달 받아야 함
  // final List<Catalog> cartList;
  // final void Function(Catalog catalog) onPressedCatalog;

  const CartWidget({
    super.key,
    // required this.cartList,
    // required this.onPressedCatalog
  });

  @override
  Widget build(BuildContext context) {
    // 임시 코드 추가(추후 변경)
    List<Catalog> catList = [];

    return Column(
      children: [
        // 카탈로그 아이템
        Expanded(
          flex: 5,
          child: ListView.builder(
            itemCount: catList.length,
            itemBuilder: (context, index) {
          
              // 하나의 오브젝트만 뽑자.
              Catalog catalog = catList[index];
              return CatalogItem(
                  catalog: catalog,
                  isInCart: true,
                  // callback 함수 연결해주어야 함(임시 코드 추가 -> 추후 변경 예정)
                  onPressedCatalog: (catalog) {});
            },
          ),
        ),
        // 구분선
        Divider(
          height: 1, thickness: 1, color: Colors.grey,
        ),
        // 사용자가 몇개를 담았는지 합계(텍스트)
        Expanded(
          flex: 1,
          child: Center(
            child: Text('SUM : ${catList.length}', style: TextStyle(
              fontSize: 22.0,
              fontWeight: FontWeight.bold,
            ),),
          ),
        )
      ],
    );
  }
}
