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

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

// 자식
class ChildA extends StatelessWidget {
  const ChildA({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        width: double.infinity, // 영역만큼 무한히 넓혀라
        color: Colors.orange,
        child: const Center(child: Text('CHILD A')),
      ),
    );
  }
}
