// 전체 화면에서 어디서든 쓸 수 있는 조각 -> flagment
import 'package:class_statement/common/d_show_alert_dialog.dart';
import 'package:class_statement/common/w_catalog_item.dart';
import 'package:class_statement/inherited_widget/state_management/inh_cart_widget.dart';
import 'package:flutter/material.dart';

import '../common/models/vo_catalog.dart';

// InheritedWidget 덕분에 prop drilling 걱정을 하지 않아도 됨
// 생성자 의존 주입을 하지 않아도 됨
class CartWidget extends StatelessWidget {

  const CartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    print("여기는 CartWidget build 함수 실행");
    // build context 내에서 사용해야 함
    InheritedCartWidget? inheritedCartWidget = InheritedCartWidget.of(context); // 외부에서 접근할 수 있는 static 메서드 만들어 둔 것
    // cartList에 접근 가능

    // 아래 ? ! 문제 때문에 방어적 코드 처리
    // build 함수의 return type은 widget
    return inheritedCartWidget == null ? CustomDialogManager.createAlert(context, '경고', '잘못된 접근', () { })
        : Column(
          children: [
            // 카탈로그 아이템
            Expanded(
              flex: 5,
              child: ListView.builder(
                itemCount: inheritedCartWidget.cartList.length,
                itemBuilder: (context, index) {

                  // 하나의 오브젝트만 뽑자.
                  Catalog catalog = inheritedCartWidget.cartList[index]; // nullable 때문에 ! 계속 쓰다가는 프로그램에 심각한 문제가 생길 수 있음
                  return CatalogItem(
                      catalog: catalog,
                      isInCart: true,
                      onPressedCatalog: inheritedCartWidget.onPressedCatalog
                  );
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
                child: Text('SUM : ${inheritedCartWidget.cartList.length}', style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                ),),
              ),
            )
          ],
    );
  }
}
