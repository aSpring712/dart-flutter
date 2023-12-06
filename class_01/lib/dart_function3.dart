void main() {

  // 화살표 함수는 자료구조에서 순회를 해야 할 때 좀 더 코드를
  // 간결하게 작성할 수 있다.

  List<String> footballPlayer = ['메시', '손흥민', '김민재', '이강인']; // 3버전 부터는 초기화를 literal type으로 하면 됨
  // 1. dart(와 java)에서는 List는 interface로 설계되어 있음 -> Iterable(반복자) 디자인 패턴 중 하나
  // iterable interface를 구현하고 있음 -> 이게 없다면 forEach 못쓰고 for문 써야 함
  footballPlayer.forEach((e) { // e에 데이터 담기면서 반복 수행. index 크기 3(0~3)
    print(e);
  }); // dart는 forEach() 메서드 안에 익명함수를 넣을 수 있다
  // 반복 돌 때마다 하나의 익명함수를 실행

  // 화살표 함수로도 가능
  footballPlayer.forEach((e) => print(e));

  List<int> numbers = [10, 20, 30, 40, 50]; // 리터럴로 초기화

  int sum1 = 0;
  numbers.forEach((num) {
    sum1 = sum1 + num;
  });
  print(sum1);

  int sum = 0;
  // 화살표 함수로 변경         복합대입연산자도 사용 가능 like +=
  numbers.forEach((num) => sum += num);
  print(sum);
}
