import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_class_04/screens/chatting/chatting_screen.dart';
import 'package:flutter_class_04/screens/home/home_screen.dart';
import 'package:flutter_class_04/screens/my_carrot/my_carrot_screen.dart';
import 'package:flutter_class_04/screens/near_me/near_me_screen.dart';
import 'package:flutter_class_04/screens/neighborhood_life/neighborhood_life_screen.dart';

// stf
// super class
class MainScreen extends StatefulWidget { // 상태를 가질 수 있는 위젯
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

// sub class
class _MainScreenState extends State<MainScreen> {

  // 변수
  int _selectedIndex = 0; // 현재 화면에 보여 줄 것이 index 0번이라는 뜻

  // IndexedStack - 한 번에 전부 로딩된다. -> 이렇게 하기 싫으면 List...로 해야 함
  @override
  Widget build(BuildContext context) {
    return Scaffold( // widget
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          HomeScreen(), // index 0
          NeighborhoodLifeScreen(),
          NearMeScreen(),
          ChattingScreen(),
          MyCarrotScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        /* 필수값 */
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed, // 좀 더 빠르게 랜더링 됨
        currentIndex: _selectedIndex,
        onTap: (index) { // event handler .. listener 등록해줌 -> 클릭 시 index 번호를 던져 줌
          print('index : $index');
          // 화면을 다시 그려라 -> build함수. stateful 위젯이어야 함
          setState(() {
            _selectedIndex = index; // 사용자가 클릭한, 콜백으로 넘어오는 index 대입
          });
        }, 
        items: [
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.home), label: '홈'),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.square_on_square), label: '동네생활'), // label 상수로 빼던가 ENUM 지정하는게 좋음
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.placemark), label: '내 근처'),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.chat_bubble_2), label: '채팅'),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.person), label: '나의 당근'),
        ],
      ),
    );
  }
}
