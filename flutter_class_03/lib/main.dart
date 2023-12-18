import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// 상태가 없는 위젯 정의
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // 메서드의 구현부, build 함수의 구현부(몸체)
    // 지역 변수 선언
    // 위젯 : 부모가 될 수 있는 위젯과 그렇지 않은 위젯이 존재한다
    // 거의 대부분의 위젯은 child, children 속성이 있음
    Widget titleSection = Container( // 지역변수로 선언만 하고있지 그림을 그리라고 하지않고 있음
      child: Row(
        children: [
          Column(
            children: [
              Text("Oeschin Lake Campground", style: TextStyle(fontWeight: FontWeight.bold),),
              Text("Kandersteg, Switzerland", style: TextStyle(fontWeight: FontWeight.bold),)
            ],
          )
        ],
      ),
    );


    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Layout demo',
      home: Scaffold( // 시각적 레이아웃 구조를 잡아줌
        appBar: AppBar(
          title: Text('Layout demo'),
          backgroundColor: Colors.orange,
        ),
        body: Center(
          child: Text("Hello World"),
        ),
      ),
    );
  }
}
