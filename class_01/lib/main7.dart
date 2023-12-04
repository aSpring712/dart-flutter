
import 'dart:convert';
import 'dart:io';
import 'dart:math';

void main() {

  // 가위 바위 보 게임 만들기
  // 1. 유저에게 어떤 타입으로 낼 것인지 물어보는 질의 창 필요
  print("가위 바위 보 중 하나를 정해서 입력하시오");
  // dart : null safe를 지원 -> 2.12 버전 이후로 변경 됨(기본적으로 data에 null 값을 넣을 수 없음)
  String userInput = stdin.readLineSync(encoding: utf8) ?? 'Error'; // 동기화 방식으로 IO를 일으킴, / ?? null 병합 연산자
  print(userInput);

  // 2. 컴퓨터가 낼 가위 바위 보 타입이 어떤 것인지 결정하는 코드를 작성
  List selectList = ["가위", "바위", "보"];
  // Random().nextInt(3) --> 0, 1, 2
  String cpuInput = selectList[Random().nextInt(3)];
  print(cpuInput);

  // 3. 유저의 타입과 컴퓨터 타입에 대한 결과를 계산하는 함수
  String resultData = getResult(userInput, cpuInput);
  print('--------------');
  print(resultData);
  print('--------------');
}

// 인수 타입 선언해도 되고 생략해도 됨
String getResult(String userInput, String cpuInput) {
  // switch, if문.. 가지고 만들 수 있음
  String cpuWin = 'CPU가 승리하였습니다';
  String playWin = 'Player가 승리하였습니다';
  String draw = '비겼습니다';

  String result = draw; // 코드를 줄이기 위해 기본값 초기화

  switch(userInput) {
    case "가위":
      if(cpuInput == '바위') {
        result = cpuWin;
      }
      if(cpuInput == '보') {
        result = playWin;
      }
    case "바위":
      if(cpuInput == '보') {
        result = cpuWin;
      }
      if(cpuInput == '가위') {
        result = playWin;
      }
    case "보":
      if(cpuInput == '가위') {
        result = cpuWin;
      }
      if(cpuInput == '바위') {
        result = playWin;
      }
    default:
      result = "올바른 값을 입력해 주세요";
  }
  return result;
}