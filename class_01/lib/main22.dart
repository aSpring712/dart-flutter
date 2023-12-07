void main() {
  // 예외 -- try catch finally
  // 특정 예외를 잡아서 다르게 핸들링 하고 싶다면
  // on이라는 키워드를 사용 할 수 있음

  // try {
  //   num result = 10 ~/ 0;
  //   // } catch(e) { // 예외 클래스의 최상위 클래스 Exception을 넘겨주는 것
  // } on TypeError {
  //   print("이녀석은 잡힐까?");
  // } on UnsupportedError {
  //     print("여기서 잡히나?");
  //   } on IntegerDivisionByZeroException { // IntegerDivisionByZeroException 타입의 exception이라 여기를 탄 것
  //     print("어떤 수를 0으로 나눌 수 없습니다.");
  //   } finally {
  //   print("자원 해제");
  // }

  // 예외 던지기
  try {
    throw UnsupportedError("예외 던지기"); // UnsupportedError 예외 처리 구문
  } on UnsupportedError {
    print("UnsupportedError 예외 처리 구문");
  } catch(e) {
    print("catch)(e) ${e.toString()}");
  } finally {
    print("throw 해도 나오나?"); // throw 해도 나옴
  }
}