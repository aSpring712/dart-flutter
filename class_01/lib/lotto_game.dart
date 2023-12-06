// dart 언어로 로또 숫자 출력 기능을 만들어 주세요
import 'dart:math';

void main() {
  // 6자리의 랜덤 번호를 찍는 알고리즘 -> 3가지 방법 정도는 생각해내야 함

  // 1. 반복문 : 2중 for문
  // 2. while 구문 -> 자료구조 사용, 변수 사용, 객체 배열 List(순서가 있게 저장되지만 반복적인 값도 저장 됨) -> while문과 set 사용
  // 3. [1, 2, 3, ..., 45] -> 셔플이라는 자료구조가 있고, 앞에 6개 까지 자를 수 있음

  // 2. 호출
  // 정렬 기능도 추가(오름차순)
  randomSixNumbers();
}

// 1. 함수 생성 - 로또 번호 생성기
// 1) 무작위 번호를 생성하는 Random() class 선언하기
// 2) 생성된 번호를 담을 수 있는 자료구조 선택하기
// 3) 이중 for문, while문, 리터럴 정의 -> 구현 기능 선택
// 4) sort() <-- List 처리하기(정렬)
randomSixNumbers() {

  Set<int> numbers = new Set();
  while(numbers.length < 6) {
    // 객체를 메모리에 올리는 것 -> 생성자
    int number = Random().nextInt(45) + 1; // dart에서 new 키워드 생략 가능(new 키워드 사용 안하는 것을 권장)

    numbers.add(number);
  }

  List<int> lotto = numbers.toList();
  lotto.sort();

  print(lotto);
}