import 'package:class_statement/common/models/vo_catalog.dart';
import 'package:class_statement/riverpod/state/riverpod_cart.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// 2. 전역 변수 설계 (외부에서 접근 가능하도록)           , 상태 type
// final badgeProvider = NotifierProvider<RiverpodBadge, int>(() => RiverpodBadge()); // NotifierProvider 객체 생성, 인자값으로 함수 전달 가능

// 위 코드 축약
final badgeProvider = NotifierProvider<RiverpodBadge, int>(RiverpodBadge.new);

// 1. 상태 클래스 만들기
// 다른 상태 클래스와 상호 작용
// [] <- 카탈로스 리스트
class RiverpodBadge extends Notifier<int> {

  // 메모리에 올라 갈때 단 한번만 호출되는 메서드
  // Notifier - T State
  @override
  int build() {
    // 청취
    // ref.watch(cartProvider) -> 상태(State)를 반환
    List<Catalog> cartCatalogList = ref.watch(cartProvider);
    return cartCatalogList.length;
  }

}