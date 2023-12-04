
void main() {
  dynamic myVariable = 50; // 컴파일 시점이 아니라 실행 시점에 데이터 유형이 다르다 cf) var
  // 컴파일 된 이후 -> 프로그램을 실행시키면 데이터 유형이 결정됨

  myVariable = "Hello";

  print(myVariable.runtimeType); // var는 에러가 났는데, Error가 나지 않음

  // dynamic : 실행 시점에 데이터의 유형이 결정되기 때문에 변수의 타입을 변경할 수 있음

  dynamic value = 42; // 실행 시점에 정수 테이터 타입으로 정해짐
  print('Value : $value');

  value = "Hello, Dart!";
  print('Value : $value');

  value = true;
  print('Value : $value');
}