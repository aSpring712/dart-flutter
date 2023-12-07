void main() {
  // 예외 처리 (data type에서 CTRL+h 누르면 구조 나옴)
  Exception exception;
  // 에러
  Error error;


  int result = 10 ~/ 0; // 몫 연산자 -> 런타임 시점에 예외가 발생한 것(컴파일 때 빨간줄 안 떴음)

  print("여기까지 코드가 올까요?"); // 예외가 발생하더라도 여기까지 코드가 와야 정상적으로 실행됨
}