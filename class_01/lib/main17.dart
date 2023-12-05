void main() {
  print("홍길동");
  print("홍길동");
  print("홍길동");
  print("홍길동");
  print("홍길동");

  for (int i = 1; i < 10; i++) {
    print("이순신");
  }
  // 중간에 멈추는 break
  // 무시하고 진행하는 continue;
  // return 키워드 사용 가능

  for(int i = 1; i < 10; i++) {
    if(i == 5) {
      break;
    }

    print(i);
  }

  print("---------------------");

  for(int i = 1; i < 10; i++) {
    if(i == 4) {
      continue; // 아래 코드는 실행하지 않음
    }

    print(i);
  }

}