void main() {
  // 예외 처리 (data type에서 CTRL+h 누르면 구조 나옴)
  Exception exception;
  // 에러
  Error error;

  try {
    // 예외가 발생할 수 있는 코드 작성 부분
    int result = 10 ~/ 0; // 몫 연산자 -> 런타임 시점에 예외가 발생한 것(컴파일 때 빨간줄 안 떴음)
    return; // 실행의 제어권을 반납
  } catch(e, stackTrace) { // e 예외에 대한 클래스를 던져 받는 것, stackTrace
    // 추적해주는 녀석 -> 어디서부터 어떻게 발생했는지 더 자세하게 추적해 줌
    print(stackTrace);

    // print(e.toString());
    // print("잘못된 코드를 작성을 했네요");
  } finally {
    print("여기는 try 구문이 실행이 되면 반드시 실행이 되는 부분이야");
    print("심지어 return 키워드를 만나도 내가 제일 잘나가");
  }

  // return 키워드는 강력해서 finally만 작동하고 바로 밑 print(""); 부분은 실행되지 않음
  print("여기까지 코드가 올까요?"); // 예외가 발생하더라도 여기까지 코드가 와야 정상적으로 실행됨
}