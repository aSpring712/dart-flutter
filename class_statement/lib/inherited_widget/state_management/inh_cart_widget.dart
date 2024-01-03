import 'package:class_statement/common/models/vo_catalog.dart';
import 'package:flutter/material.dart';

// 1. 공유상태로 관리할 데이터를 결정한다 --> cart에 대한 데이터를 선택

// 규칙 1. 공유상태로 만들 데이터를 InheritedWidget 상속 받아야 한다.
class InheritedCartWidget extends InheritedWidget { // InheritedWidget -> 상태에 접근할 수 있는 연결점만 제공

  // Cart에 담긴 리스트 데이터를 관리
  final List<Catalog> cartList;
  // callback 함수 필요
  final void Function(Catalog catalog) onPressedCatalog;

  const InheritedCartWidget(
      {required this.cartList,
        required this.onPressedCatalog,
        required super.child});

  // // 2. 외부에서 쉽게 접근할 수 있는 static method를 만들어 준다
  // // 개발 모드에서 쓰는 코드고 release 모드에서는 동작하지 않음
  // static InheritedCartWidget of(BuildContext context) { // 어떤 위젯에서 접근하는지 넘겨받아야 함
  //   final InheritedCartWidget? result = // 내 자신 반환
  //     context.dependOnInheritedWidgetOfExactType<InheritedCartWidget>();
  //   assert(result != null, "Not Found InheritedCartWidget in context"); // 오류를 빨리 찾기 위함, null이 아니거나 Not Found InheritedCartWidget in context이면 --> false가 뜨기 때문에 오류 발생 확인이 쉽다.
  //   return result!; // ! null 강제 연산자 때문에 오류날 수 있음
  // }

  // release mode
  static InheritedCartWidget? of(BuildContext context) {

    return context.dependOnInheritedWidgetOfExactType<InheritedCartWidget>();
  }

  // 오버라이드 1
  // 위젯 트리에서 해당 위젯이 업데이트 될 때마다 호출되는 method
  // 즉, 위젯 트리가 다시 빌드될 필요가 있는지 알려 줌
  // true, false 둘 중 하나를 return --> true(재빌드), false(stop)
  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) { // up casting 된 상태이기 때문에 수정 필요
    // 현재 InheritedCartWidget
    return cartList != oldWidget.cartList;
  }

}