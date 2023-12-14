void main() {
  String name = "John";
  int age = 30; // 위 변수들은 null 값을 가질 수 없음

  String? nullableName;
  int? nullableAge;

  print('name : $name');  // John
  print('age : $age');    // 30
  print('nullableName : $nullableName'); // null
  print('nullableAge : $nullableAge');  // null

  // JAVA - null type을 사용한다면 방어적 코드나 예외 처리를 해주어야 한다.
  if( nullableName != null ) {
    print("nullableName : $nullableName}");
  }
}