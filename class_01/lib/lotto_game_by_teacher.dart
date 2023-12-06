// dart 언어로 로또 숫자 출력 기능을 만들어 주세요
import 'dart:math';

void main() {
  // 호출
  // 정렬 기능도 추가 하세요 -  1, 20, 34, 40, 42, 45
  generateLottoNumbers();
}

// 함수 - 로또 번호 생성기
// 1. 무작위 번호를 생성하는 Random() 클래스 선언하기
// 2. 생성된 번호를 담을 수 있는 자료구조 선택하기
// 3. 이중 for, while, 리터럴 정의  구현 기능 선택
// 4. sort() <-- List 처리 하기
generateLottoNumbers() {
  var random = Random(); // dart 에서 new 키워드 생략 가능 (사용 안하는 것을 권장 합니다)
  Set<int> lottoNumbers = {}; // 생성된 번호를 메모리에 담을 자료구조 선언

  // 랜덤 번호 발생 코드 작성
  // 인덱스에 크기는 n - 1 입니다.
  while (lottoNumbers.length < 6) {
    int number =
        random.nextInt(45) + 1; // 45 --> 0 부터 44까지 랜덤 숫자 하나를 출력합니다.  + 1 추가
    lottoNumbers.add(number);
  }
  // 번호 확인
  print(lottoNumbers.toString());
  // 정렬 기능 List 에 sort 함수 사용 해보기
  List<int> sortNumbers =
  lottoNumbers.toList(); // Set 자료구조를 List 자료 구조로 변경할 수 있어요 toList() 함수
  sortNumbers.sort(); // 정렬 처리
  print(sortNumbers.toString());
}