// 전체 화면에서 어디서든 쓸 수 있는 조각 -> flagment
import 'package:class_statement/common/w_catalog_item.dart';
import 'package:class_statement/riverpod/state/riverpod_cart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../common/models/vo_catalog.dart';

// 4 - 활용하는 방법
// 1) StatelessWidget -> ConsumerWidget으로 변경
// 2) 렌더링 함수 build() 재 정의
class CartWidget extends ConsumerWidget {
  // // 선택된 카탈로그 정보를 받고, 콜백 함수까지 전달 받아야 함
  // final List<Catalog> cartList;
  // final void Function(Catalog catalog) onPressedCatalog;

  const CartWidget({
    super.key,
    // required this.cartList,
    // required this.onPressedCatalog
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // WidgetRef : flutter framework에 포함된 것이 아니라 독립적 -> 무관하게 쓸 수 있다.

    // 상태 관리 데이터가 변경 되었는지 계속 확인해야 한다. -> ref로 계속 구독 처리
    // 전역변수로 세팅
    List<Catalog> cartProviderList = ref.watch(cartProvider); // -> State -> List<Catalog>

    return Column(
      children: [
        // 카탈로그 아이템
        Expanded(
          flex: 5,
          child: ListView.builder(
            itemCount: cartProviderList.length,
            itemBuilder: (context, index) {
              // 하나의 오브젝트만 뽑자.
              Catalog catalog = cartProviderList[index];
              return CatalogItem(
                  catalog: catalog,
                  isInCart: true,
                  // callback 함수 연결해주어야 함(임시 코드 추가 -> 추후 변경 예정)
                  // ref.read(cartProvider.notifier) -> RiverpodCart 클래스, onCatalogPressed()는 호출이고, onCatalogPressed 해주면 함수를 인자 값으로 넘기는 것
                  onPressedCatalog: ref.read(cartProvider.notifier).onCatalogPressed); // 선언해주는 코드! 한 번만
            },
          ),
        ),
        // 구분선
        const Divider(
          height: 1,
          thickness: 1,
          color: Colors.grey,
        ),
        // 사용자가 몇개를 담았는지 합계(텍스트)
        Expanded(
          flex: 1,
          child: Center(
            child: Text(
              'SUM : ${cartProviderList.length}',
              style: const TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        )
      ],
    );
  }
}
