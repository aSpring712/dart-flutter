class MyClass {

  late String name;
  // String? name;

  MyClass() {
    // 통신 요청 후
    // 응답
    name = "responseName";
  }

  void printString() {
    // print(name?.length);

    // print(name.length); // late 사용해서 ? 적어주지 않아도 됨
    print(name);
  }
}

void main() {
  // 런타임 시점 -> 객체가 메모리에 올라가는 시점 -> 가장 먼저 실행되는 것 : 생성자

  final myObject = MyClass(); // 상수
  myObject.printString();

}