import 'package:class_statement/common/models/vo_catalog.dart';
import 'package:riverpod/riverpod.dart';

// riverpod 사용 시 포인트 - riverpod은 상태클래스와 상태 변경 로직 클래스를 분리한다.

// 2 - 전역 변수 설계 : 상태변경(접근) 로직 클래스 담당
// 외부에서 접근해야 하기 때문에 상태클래스를 전달해야 한다.
final cartProvider = NotifierProvider<RiverpodCart, List<Catalog>>(() {


  // return new RiverpodCart(); // 요즘 버전에서는 new 생략
  return RiverpodCart();
});

// 1 - 상태 클래스의 설계             // state
class RiverpodCart extends Notifier<List<Catalog>> {

  // // 상태 속성
  // List<Catalog> list = []; // 목적 : 이것을 관리하는 것

  /// build()는 Notifier 객체가 처음 생성될 때 한 번 호출 되어 상태를 설정 합니다(State type의 class를 말함)
  /// 내부에는 T _state; 변수가 있다.
  // 추상 class이므로 override 해야 함
  @override
  List<Catalog> build() {
    return [];
  }

  // 행위 - 동작을 만들어주면 됨
  void onCatalogPressed(Catalog catalog) {
    // 아래 로직이 적절한가? NO -> 아래 로직은 얕은 복사 개념 -> 안돌아갈 것
    // if(state.contains(catalog)) { // 내부적으로 state를 가지고 있으며 List<Catalog>
    //   // 리스트에서 삭제 처리
    //   state.remove(catalog);
    // } else {
    //   state.add(catalog);
    // }

    // 깊은 복사로 수정하기 -> 작동함
    if(state.contains(catalog)) {
      state = state.where((element) {
        return element != catalog;
      }).toList();
    } else {
      state = [...state, catalog];
    }

  }
}