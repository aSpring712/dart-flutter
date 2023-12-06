void main() {

  // 익명 함수에 대해 알아 보자.

  // 1단계 - 이름이 없는 함수 {선언을 하더라도 이름이 없어서 호출(사용)할 방법이 없음}
  // 변수에 할당하지 않고 바로 익명 함수를 호출하는 것은 dart에서는 불가능하다.

  (int number) {
    return 100 + number;
  };

  // 2단계 - 함수를 변수에 담을 수 있다. (dart는 일급 객체를 지원)
  int Function(int) square = (int number) { // return type int -> 생략도 가능
    return number * number;
  };

  // 2-1 단계 종류 - 명시적 타입 / 리턴 타입 생략 가능, 파라미터 타입 생략 가능
  // dart는 타입 추론 가능 -> 컴파일러가 허용해 줌
  Function sub = (a, b) { // 리턴 타입 생략, (int a, int b) 파라미터 타입 생략 가능
    return a - b;
  };

  // 3단계 - var(동적 데이터 타입) 키워드에 대한 사용
  // java에서도 익명함수가 있으며, 마지막에 동일하게 ; 사용
  var cube = (int number) {
    return number * number * number;
  };

  // 4단계 - var 키워드를 사용해서 파라미터 타입에 대한 생략이 가능
  var add = (number) {
    return number + 10;
  };

  // 5단계
  var multiply = (a, b) {
    return a * b;
  };

  // 익명 함수 실행
  print("2의 제곱은 ${square(2)}");
  print("두 수의 빼기 연산 ${sub(10, 10)}");
  print("3의 세제곱은 ${cube(3)}");
  print("x값의 더하기 10은 ${add(3)}");
  print("곱셈의 결과 값은 : ${multiply(10, 20)}");
}