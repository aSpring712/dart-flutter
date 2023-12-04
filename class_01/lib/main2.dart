
// 코드의 시작점
void main() {

  num aNum = 10; // num 은 int, double 둘 다 될 수 있다.
  int aInt = 10;
  double aDouble = 10.0;
  print('$aNum, $aInt, $aDouble');

  num sum = aNum + aInt + aDouble; // 변수의 선언과 동시에 초기화

  print("sum : $sum"); // 객체는 . 연산자를 사용할 수 있다.
  print(sum.runtimeType); // 실행하는 시점에서 데이터 타입을 확인할 수 있는 변수이다.
  print(aInt.runtimeType);

  // 산술연산자 사용 시 부동소수점은 정확한 값을 나타내는 것이 불가능함
  // 즉, 소수점 연산은 big decimal class 등을 사용해야 ... -> 부동 소수점 연산은 가능한 지양하는 것이 좋다.
}