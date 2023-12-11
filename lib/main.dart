void main() {
  Person person1 = new Person(); // 힙 메모리 영역에 올라갔음
  person1.displayInfo(); // 메모리에 올리지 않고 . ~~ 하면 null point exception 뜸
}

// 클래스 설계
class Person {
  String myName = '홍길동';
  String? name; // String Nullable Type -> name 변수 값이 null 값이 될 수 있다라는 의미를 뜻한다.
  // String, String? 타입은 다른 타입이다.
  String? phone;
  // String myPhone; // error
  int? age;

  void displayInfo() {
    print("name : $name"); // null
    print("phone : $phone"); // null
    // -> 둘 다 초기화하지 않았기 때문에
  }
}