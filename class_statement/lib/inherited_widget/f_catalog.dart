// 전체 화면에서 어디서든 쓸 수 있는 조각 -> flagment
import 'package:class_statement/common/w_catalog_item.dart';
import 'package:class_statement/inherited_widget/state_management/inh_cart_widget.dart';
import 'package:flutter/material.dart';

import '../common/models/vo_catalog.dart';

// 생성자 의존 주입 제거 가능
class CatalogWidget extends StatelessWidget {

  const CatalogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    print("여기는 CatalogWidget build 함수 실행");
    // context를 통해서 공유 상태 데이터에 접근
    InheritedCartWidget inheritedCartWidget = InheritedCartWidget.of(context)!; // 실제론 ! 쓰지말고 방어적 코드 사용하기


    return ListView.builder(
        itemCount: catalogListSample.length, // 만큼 반복을 돌릴 것
        itemBuilder: (context, index) {

          // 넘겨 받은 리스트 중에 하나의 오브젝트
          Catalog catalog = catalogListSample[index];
          return CatalogItem(
              catalog: catalog,
              isInCart: inheritedCartWidget.cartList.contains(catalog), // 정보는 catalog_item이 가지고 있음
              onPressedCatalog: inheritedCartWidget.onPressedCatalog);
        },
    );
  }
}
