import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/**
 * app에 사용하는 반복적인 글꼴과 색상 등을 매번 지정하는 것은 번거로운 작업
 * 자주 사용되는 설정들을 모아둘 예정
 */

TextTheme textTheme() {
  return TextTheme( // 각 화면 파일마다 따로 스타일 지정하지 않고 이 녀석을 불러서 사용 가능함
    displayLarge: GoogleFonts.openSans(fontSize: 18.0, color: Colors.black),
    displayMedium: GoogleFonts.openSans(fontSize: 16.0, color: Colors.black,
                                        fontWeight: FontWeight.bold),
    bodyLarge: GoogleFonts.openSans(fontSize: 16.0, color: Colors.black),
    bodyMedium: GoogleFonts.openSans(fontSize: 14.0, color: Colors.grey),
    titleMedium: GoogleFonts.nanumGothic(fontSize: 15.0, color: Colors.black),
  );
}

IconThemeData iconTheme() {
  return const IconThemeData(color: Colors.black);
}

AppBarTheme appBarTheme() {
  return AppBarTheme(
    centerTitle: false, // ios는 기본 center -> 이런것들을 통일 시키기 위한 세팅
    elevation: 0.0,
    iconTheme: iconTheme(), // 아이콘 검은색
    titleTextStyle: GoogleFonts.nanumGothic(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.black),
    color: Colors.black,
  );
}

// 내장된 객체 -> 정해진 형식이 있음 -> 형식에 맞는 옵션을 넣어서
BottomNavigationBarThemeData bottomNavigationBarThemeData() {
  return const BottomNavigationBarThemeData( // const 붙여서 compile 시점에..
    selectedItemColor: Colors.orange, // 선택되었을 때
    unselectedItemColor: Colors.black54, // 선택되지 않았을 때
    showUnselectedLabels: true,
  );
}

// 위에서 만들어 둔 함수를 아래에 연결
ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    textTheme: textTheme(),
    iconTheme: iconTheme(),
    appBarTheme: appBarTheme(),
    bottomNavigationBarTheme: bottomNavigationBarThemeData(),
  );
}