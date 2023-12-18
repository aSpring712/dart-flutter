import 'package:flutter/material.dart';

// 코드의 시작점
void main() {
  // 플러터 시작 시 최상위에 홀출되어야 하는 함수(루트 위젯으로 설정 됨)
  runApp(const MyApp());
}

// Flutter 위젯 (stl : 상태가 없는 위젯, 상속받아서)
// 위젯 변경은 안됨 -> 변경 필요 시 stateful 위젯 사용
// 한 번 랜더링 된 후 변경이 필요없는 것은 statelessWidget 사용
class MyApp extends StatelessWidget {
  // 생성자
  const MyApp({super.key});

  // 화면에 그림을 그려주는 build 함수
  @override
  Widget build(BuildContext context) {
    return const MaterialApp( // 한 번 랜더링 되면 다시 이미지를 그릴 일이 없으므로 const
      debugShowCheckedModeBanner: false,
      home: StorePage(),
    ); // 객체를 메모리에 올리는 생성자
  }
}

// 코드 분리하기
class StorePage extends StatelessWidget {
  const StorePage({super.key});

  @override
  Widget build(BuildContext context) {
    // 모든 위젯은 속성으로 child 속성이 있다
    return Scaffold( // nav, appbar, (+) 있는 위젯
      // CTL + Space
      body: SafeArea(
        child: Column(
          children: [
            // 상수(const, final) : const - compile 시점에 미리 랜더링해서 성능 올릴 수 있으며 immutable
            const Padding(
              padding: EdgeInsets.all(25.0),
              child: Row(
                children: [
                  //   data ,   명명된 파라미터로 옵션값
                  Text("Woman", style: TextStyle(fontWeight: FontWeight.bold)), // 객체를 메모리에 올리는 코드
                  Spacer(), // 남은 공간 여백을 다 먹어라
                  Text("Kids", style: TextStyle(fontWeight: FontWeight.bold)),
                  Spacer(), // 남은 공간 여백을 다 먹어라
                  Text("Shoes", style: TextStyle(fontWeight: FontWeight.bold)),
                  Spacer(), // 남은 공간 여백을 다 먹어라
                  Text("Bag", style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            // Expanded : 넓힐 수 있는만큼 확장하라                    cover : 내가 위치한 공간에 가득 차게하고 화면에서 넘어가면 잘라버려라
            Expanded( // 주축 방향으로 크려고 함
              flex: 1, // 값을 적지 않으면 기본 값이 1. 아래 이미지와 1 : 1
              child: Image.asset("assets/bag.jpeg", fit: BoxFit.cover,)), // local 이미지를 들고올 때 사용
            const SizedBox(height: 2), // 크기를 잡아주는 녀석
            Expanded(
              flex: 1,
              child: Image.asset("assets/cloth.jpeg", fit: BoxFit.cover,)) // local 이미지를 들고올 때 사용
          ],
        ),
      )
    );
  }
}