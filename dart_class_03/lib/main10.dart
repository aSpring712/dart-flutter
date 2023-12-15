// 소화하는 방법 두가지 - 동기적으로 처리(async await)
void main() async {
  // int sumResult = addNumbers1(10, 10) as int; // Unhandled exception: type 'Future<int>' is not a subtype of type 'int' in type cast

  int sumResult = await addNumbers1(10, 10);

  print(sumResult);
  print("........ 이 코드는 어느 시점에 동작 될까요? 5");
  print("........ 이 코드는 어느 시점에 동작 될까요? 6");
}

// 비동기로 동작하는 함수를 설계 - <Future 타입 함수 사용>
// 비동기로 돌아야하기 때문에 반환 타입 Future
// async await로 동기적으로 동작하는 함수로 만들어줌
Future<int> addNumbers1(int n1, int n2) async {
  print(".........1 : 함수 시작");
  var result = 1;
  // 통신을 통해서 연산했다고 가정(2초 정도 소요)
  await Future.delayed(Duration(seconds: 2), () {
    result = n1 + n2;
    print("계산 완료");
  });

  print(".........end : 함수 완료");
  return result;
}