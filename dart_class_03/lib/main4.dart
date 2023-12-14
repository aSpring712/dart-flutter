void main() {
  // null 억제 연산자 사용해 보기
  // String? name = "John";
  // String nam2 = name;

  String? name;
  print("----------------------------- .....");
  // String name2 = name; // error
  String name2 = name!; // error
  // 명시적으로 ! 사용하면 실행 시점에 런타임 오류를 발생시킬 수 있다.

}