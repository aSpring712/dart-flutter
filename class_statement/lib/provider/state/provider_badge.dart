import 'package:class_statement/provider/state/provider_cart.dart';
import 'package:flutter/material.dart';

class ProviderBadge extends ChangeNotifier {

  ProviderBadge({required this.providerCart}) {
    // 구현부(생성자 몸체)
    providerCart.addListener(providerCartListener); // 청취
  }

  // 상태 속성 결정
  int counter = 0;
  // 청취 -> 듣고 있으라는 명령어 필요
  final ProviderCart providerCart; // 포함 관계로 가지고 있을 것 -> 메모리에 올리는 시점에 생성자 의존 주입을 받아야 함

  // 상태 변경 로직 구현
  // 청취하고 있다가 ProviderCart가 변경 되면 어떤 동작을 할지 결정
  void providerCartListener() {
    counter = providerCart.catalogCartList.length; // 상태변경
    // 알림 처리
    notifyListeners();
  }

  // 메모리 해제 처리
@override
  void dispose() {
    // 메모리에서 제거 처리
    providerCart.removeListener(providerCartListener);

    // 부모 클래스의 함수 호출
    super.dispose();
  }
}