import 'package:flutter/material.dart';

import '../../common/models/vo_catalog.dart';

// 상태 클래스 제공자 설계
class ProviderCart extends ChangeNotifier { // with -> mixin으로 들고오는 것, 또는 extends

  // 상태 속성
  List<Catalog> catalogCartList = [];

  // 상태 변경 로직 설계
  void onPressedCatalog(Catalog catalog) { // 얕은 복사 개념으로 돌아감 -> 깊은 복사 코드로 변경
    if(catalogCartList.contains(catalog)) {
      // catalogCartList.remove(catalog);
      catalogCartList = catalogCartList.where((e) {
        return e != catalog;
      }).toList();
    } else {
      // catalogCartList.add(catalog);
      catalogCartList = [...catalogCartList, catalog];
    }
    // 상태 클래스를 듣고(리스너) 객체들에게 상태 변경을 알리고 싶다면
    notifyListeners(); // 참조 비교
  }
}