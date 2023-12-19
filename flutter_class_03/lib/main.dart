import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// 상태가 없는 위젯 정의
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // 반복되는 UI 함수 만들기 - 하단 버튼 섹션
  // Column 위젯을 반환
  Column _buildButtonColumn(Color color, IconData icon, String label) { // _ private, 매개변수로 색상, 아이콘, text 받아야 함
    return Column(
      children: [
        Icon(icon, color: color,),
        Container(
          margin: const EdgeInsets.only(top: 8), // const - 메모리 낭비 방지. comiple 시점에. 한 번 새로 만들면 그대로 가져와서 씀
          child: Text(
            label,
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: color),
          ),
        )
      ], // list literal
    );
  }

  @override
  Widget build(BuildContext context) {
    // 메서드의 구현부, build 함수의 구현부(몸체)
    // 지역 변수 선언
    // 위젯 : 부모가 될 수 있는 위젯과 그렇지 않은 위젯이 존재한다
    // 거의 대부분의 위젯은 child, children 속성이 있음
    Widget titleSection = Container( // 지역변수로 선언만 하고있지 그림을 그리라고 하지않고 있음
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              // 교차축 정렬 속성
              crossAxisAlignment: CrossAxisAlignment.start, // 교차축 정렬 (왼쪽으로 정렬)
              children: [
                Container(
                  child: Text(
                    "Oeschin Lake Campground",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  padding: EdgeInsets.only(bottom: 8),
                ),
                Text(
                  "Kandersteg, Switzerland",
                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
                )
              ],
            ),
          ),
          // 2번째 자식
          Icon(Icons.star, color: Colors.red[500],),
          // 3번째 자식
          const Text("41")
        ],
      ),
    );

    // 지역변수. 앱 테마 객체가 들고 있는 primaryColor로 지정된 색상을 들고올 수 있다.
    Color color = Theme.of(context).primaryColor; // 동적으로 가져옴

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly, // 주축 방향
      children: [
        _buildButtonColumn(color, Icons.call, "CALL"),
        _buildButtonColumn(color, Icons.near_me, "CALL"),
        _buildButtonColumn(color, Icons.share, "CALL"),
      ],
    );

    // 지역변수
    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
            'Alps. Situated 1,578 meters above sea level, it is one of the '
            'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
            'half-hour walk through pastures and pine forest, leads you to the '
            'lake, which warms to 20 degrees Celsius in the summer. Activities '
            'enjoyed here include rowing, and riding the summer toboggan run.',
        softWrap: true, // false를 주면 한줄로 쭉 나오고 생략됨
        // softWrap - true : 텍스트는 그 경계를 넘지 않게 다음 줄로 자동으로 줄 바꿈 됩니다.
        // softWrap - false : 기본값. 텍스트는 줄바꿈 되지 않고 그 경계를 넘어갈 수 있습니다.
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
        body: Column(
          children: [
            Image.asset(
              "assets/images/lake.jpeg",
              width: 620,
              height: 240,
              fit: BoxFit.cover,
            ), // 이미지는 다시 compile 해야 함
            titleSection, // 그림 그리라고 적용
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }
}
