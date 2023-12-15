// Future 타입을 소화시키는 2가지 방법
// 1. async, await
void main() async {

  // Future 타입을 선언해 보자.

  // Future<String> name = ""; // 값을 넣을 수 없음 -> Future 타입이기 때문

  // 일반적으로 Future 타입에 데이터를 넣는 방법
  Future<String> name = Future.value("텐코딩"); // 값을 넣으려면 이렇게 해야 함
  Future<int> number = Future.value(100);
  Future<bool> isTrue = Future.value(true);

  // print(name); // Instance of 'Future<String>'
  // print(number); // Instance of 'Future<int>'
  // print(isTrue); // Instance of 'Future<bool>'

  print(await name); // 텐코딩
  print(await number); // 100
  print(await isTrue); // true
}