// Future 타입을 소화시키는 2가지 방법
// 1. async, await
// 2. 두번째 방법 확인하기 --> 콜백 메서드를 활용하는 방법
void main() {

  // Future 타입을 선언해 보자.

  // Future<String> name = ""; // 값을 넣을 수 없음 -> Future 타입이기 때문

  // 일반적으로 Future 타입에 데이터를 넣는 방법
  Future<String> name = Future.value("텐코딩"); // 값을 넣으려면 이렇게 해야 함
  Future<int> number = Future.value(100);
  Future<bool> isTrue = Future.value(true);

  print(name); // 미래 타입을 소화 시킬 수 없어!

  name.then((value) {
    print("미래 타입 값 꺼내기 : $value"); // 미래 타입 값 꺼내기 : 텐코딩
  });

  number.then((v) => print("미래 타입 값 꺼내기 : $v"));

  isTrue.then((val) => print("값 꺼내기 : $val"));

}