// 전체 화면에서 어디서든 쓸 수 있는 조각 -> flagment
import 'package:class_statement/common/w_catalog_item.dart';
import 'package:class_statement/riverpod/state/riverpod_cart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../common/models/vo_catalog.dart';

class CatalogWidget extends ConsumerWidget {

  // // 통신을 통해 받은 데이터가 필요함
  // final List<Catalog> responseListData;
  // // 내 카트에 담은 데이터 정보가 필요함
  // final List<Catalog> cartCatalogList;
  // final void Function(Catalog catalog) onPressedCatalog;

  const CatalogWidget({
    super.key,
    // required this.responseListData,
    // required this.cartCatalogList,
    // required this.onPressedCatalog
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView.builder( /// 통신으로 받아서 화면 전체에 list를 뿌려주는 것
        // catalogListSample -> lib/models/vo_catalog.dart의 전역 변수
        itemCount: catalogListSample.length, // 만큼 반복을 돌릴 것
        itemBuilder: (context, index) {

          // 넘겨 받은 리스트 중에 하나의 오브젝트
          Catalog catalog = catalogListSample[index];
          return CatalogItem(
              catalog: catalog,
              // TODO 임시 수정 (코드 변경 예정)
              // ref.watch(cartProvider) -> List
              // ref.read(cartProvider.notifier) -> 상태 클래스에 접근 (RiverpodCart)
              isInCart: ref.watch(cartProvider).contains(catalog), // true or false
              onPressedCatalog: ref.read(cartProvider.notifier).onCatalogPressed);
        },
    );
  }
}
