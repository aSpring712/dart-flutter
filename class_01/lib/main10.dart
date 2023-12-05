void main() {

  double doubleValue = 3.14;
  int intValue = doubleValue.toInt(); // 강제 형 변환 : 주의점 - 소수 부분은 잘리게 된다.
  // 강제 형 변환 : 컴파일러에게 소수 부분은 잘라도 되니까 그냥 넣어버려 하는 것
  print(intValue); // 3

  int intValue2 = 33;
  // double doubleValue2 = intValue2; // 자동 형 변환 안된
  double doubleValue2 = intValue2.toDouble(); // 강제 형 변환

  print(doubleValue2); // 33.0
  print(doubleValue2.runtimeType); // double

  print("---------------------------");
  String strValue1 = doubleValue2.toString(); // 문자열로 강제 형변환은 toString() 사용
  print(strValue1);
  print(strValue1.runtimeType);
  // as 연산자 사용해보기

  int intValue3 = 88;
  double doubleValue3 = intValue3 as double; // 컴파일 시점에 오류가 발생하지 않는다.
  // 실패함!!!
  print(doubleValue3); // 런타임 시점에 오류가 남 "type 'int' is not a subtype of type 'double' in type cast" // int, double 타입은 상속 관계(부모자식)가 아니기 때문에 as 사용 불가

}