import 'package:flutter/material.dart';
// flutter --> 머터리얼(구글에서 제공), iOS에서 제공하는 쿠퍼티노 불러올 수 있음

void main() {
  // runApp -> 이 함수에 전달된 위젯을 애플리케이션의 루트 위젯으로 만들어 줌
  runApp(
    Center(
      child: Text('Hello, World!',
        textDirection: TextDirection.ltr // 왼쪽에서 오른쪽으로 글을 쓰는 언어권이라 이걸 사용
      ),
    )
  );
}