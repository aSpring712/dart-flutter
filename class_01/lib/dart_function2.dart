void main() {

  int num1 = 500;
  int num2 = 10;

  print(" 더하기 : ${add(num1, num2)}");
  print(" 빼기 : ${sub(num1, num2)}");
  print(" 곱하기 : ${mul(num1, num2)}");
  print(" 나누기 : ${div(5, 0)}"); // 결과 Infinity
}

// 1. 기존 함수 만들어 보기
int add1(int n1, int n2) {
  return n1 + n2;
}
int add(int n1, int n2) => n1 + n2;

// 2. 기존 함수 만들어 보기
int sub1(int n1, int n2) {
  return n1 - n2;
}

// 2번 함수를 화살표 함수로 변경해 보자
int sub(n1, n2) => n1 - n2; // 파라미터 타입 제거

// 3. 기존 함수
mul1(int n1, int n2) {
  return n1 * n2;
}

// 화살표 함수로 변경
mul(n1, n2) => n1 * n2;

// 4.
div1(int n1, int n2) {
  // 방어적 코드 작성 가능
  if(n2 == 0) {
    return "0으로 나눌 수 없습니다";
  }
  return n1 / n2;
}

div(n1, n2) => n1 / n2;