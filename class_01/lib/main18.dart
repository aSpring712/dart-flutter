import 'dart:io';

void main() {
  const String comma = ","; // 컴파일 시점에 상수화
  stdout.write("안녕"); // print와 동일하지만 개행 \n을 하지않음

  for(int i = 1; i < 10; i++) {
    stdout.write('$i');
  }
  // 안녕123456789 -> 개행없이

  print('안녕');
  for(int i = 1; i < 10; i++) {
    stdout.write('$i');
  }
  // 안녕
  // 123456789

  print('-------------- 도전과제 ----------------');
  // 10의 마지막에 , 출력하지 않도록 코드를 수정하시오
  for(int i = 1; i < 11; i++) {
    stdout.write('$i');
    if(i == 10) {
      continue;
    }
    stdout.write('$comma ');
  }
}