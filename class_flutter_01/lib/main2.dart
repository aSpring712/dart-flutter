import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// 주의! Container 위젯을 - BoxDecoration() 사용
// Container 위젯에 속성인 color 속성을 동시에 사용하면
// 예외를 발생 시킨다.
void main() {
  runApp(Center(
    child: Container(
      decoration: BoxDecoration( // BoxDecoration 객체
        color: Colors.red
      ),
      height: 100,
      width: 100,
      // color: Colors.blueGrey,
    ),
  ));
}