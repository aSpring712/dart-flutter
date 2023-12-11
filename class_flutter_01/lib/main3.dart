import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';

void main() {
  // 이 함수는 root widget을 만들어 주고 Flutter Framework와 연결해준다.
  runApp(MyStatelessWidget()); // MyStatelessWidget 생성자 호출 -> 메모리에 올라감 -> 프로그램이 실행 됨
}

// stl
// MyStatelessWidget을 확장하여 StatelessWidget 클래스를 정의 합니다.
// StatelessWidget -> LifeCycle이 있음 -> 실행의 흐름이 정해져 있다. : 템플릿 메서드 패턴
// 1 생성자부터 실행 되고, 내부적(stateless 안에)으로 실행 흐름 정해져 있음.
class MyStatelessWidget extends StatelessWidget {
  // 생성자. 선택적 key 인자를 상위 클래스로 전달합니다.
  const MyStatelessWidget({super.key}); // 매개변수를 받음(super -> 부모 위젯)

  // 이 메서드는 위젯의 UI 부분을 build합니다.
  @override // 상속받은 부모 클래스의 메서드를 재정의해서 우리에 맞게. // 2 build 메서드가 자동으로 호출(콜백 함수)
  Widget build(BuildContext context) { // return type Widget
    // 수행 구문 작성 가능
    print("여기 메서드 실행이 되나요?"); // 실행의 흐름이 정해져 있어서 여기도 호출 됨
    return const Placeholder(); // 함수 구현부 Body
  }
}
