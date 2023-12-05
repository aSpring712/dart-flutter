
void main() {
  calculateInterest(100, 3.0, 1);
}

// return 값이 없는 함수
void printName() {
  print('My name is 홍길동');
}

int add(int num1, int num2) {
  return num1 + num2;
}

// 간단한 이자를 계산하는 함수 만들어보기
// 이자 = 원금 * 이자율 * 시간
// 이자 interest
void calculateInterest(double principal, double rate, double year) {
  // 이자율 -> 백분율이므로 100으로 나누어 주어야 함
  double interest = (principal * rate * year) / 100;
  print('간단한 이자 계산 금액은 $interest 입니다');
}