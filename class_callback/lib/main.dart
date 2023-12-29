import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// StatefulWidget -> 상태가 있는 위젯
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

// sub class에서 렌더링 해줌
class _MyAppState extends State<MyApp> {
  String childMessageContent = "여기는 부모 위젯 영역이야";

  // 매개변수로 자식들에게 함수를 전달
  // 매개변수를 받을 수 있도록 설계 하자.
  // 함수의 설계 모양이 변경됨
  // (msg) {},  --> parameter type : String
  // (context) {} --> parameter type : BuildContext
  void onCallbackPressed(String msg) {
    // stf 위젯에 화면을 렌더링 하려면 --> setState() 함수를 써야 함
    // setState --> build() 함수를 다시 실행 해!!!
    setState(() {
      // childMessageContent = "자식에게 이벤트 발생 했네";
      childMessageContent = msg;
    });
  }

  @override
  Widget build(BuildContext context) {
    // build <---
    print("부모 위젯에 빌드 함수가 다시 호출 되니?");
    return MaterialApp(
      home: SafeArea( // device 마다 body 영역 다르므로, body 영역의 적당한 곳에 배치
        child: Scaffold(
            body: Column(
            children: [
              Expanded(
                  child: Center(child: Text(childMessageContent))
              ),
              Expanded(flex: 1, child: ChildA(
                onCallback: onCallbackPressed,
              )), // Expanded : 확장
              Expanded(flex: 1, child: ChildB(
                onCallBack: onCallbackPressed,
              )),
            ],
          ),
        ),
      ),
    );
  }
}

// 자식 -> 반드시 부모 위젯이 있어야 자식이 있을 수 있다(종속성)
class ChildA extends StatelessWidget {

  // 상태와, 기능
  //final VoidCallback callback; // (String msg) {}
  // Function() x
  final Function(String msg) onCallback;
  // onCallback('aaa');
  const ChildA({required this.onCallback, super.key});
  // callback --> () {}

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: InkWell(
        // () {}
        onTap: () {
          onCallback('안녕 여기는 A');
        }, // event 발생 시 자식 -> 부모
      child: Container(
        width: double.infinity, // 영역만큼 무한히 넓혀라
        color: Colors.orange,
        child: const Center(child: Text('CHILD A')),
        ),
      ),
    );
  }
}

// 자식
class ChildB extends StatelessWidget {
  // final VoidCallback callback;

  final Function(String msg) onCallBack;

  const ChildB({required this.onCallBack, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: InkWell(
        onTap: () {
          onCallBack("하이 여기는 어딜까?");
        },
        // onTap: () {
        //   print("child B에 이벤트 발생");
        // },
        child: Container(
          width: double.infinity, // 영역만큼 무한히 넓혀라
          color: Colors.red,
          child: const Center(child: Text('CHILD B')),
        ),
      ),
    );
  }
}