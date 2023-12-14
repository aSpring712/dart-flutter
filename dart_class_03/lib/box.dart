
// 제네릭 -> 무엇이든 담을 수 있는 제네릭 프로그래밍
import 'package:flutter/cupertino.dart';

/**
 * 설계적 측면에서 제네릭 프로그래밍은 언제 사용해야 될까?
 * 규칙1. 변수의 이름은 동일해야 하지만 데이터 타입을 다르게 설계할 때
 * ex) Spring
 * T data;
 * -> 변수 이름은 똑같지만 아래처럼 데이터 타입이 다르게 내려져야 할 때 사용
 * User data;
 * Order data;
 *
 *
 * 우리는 아래 상황에서 사용하고 있다.
 * 1. 클라이언트 응답을 처리할 때, 어떤 데이터 타입이 내려질지 모를 때
 * 2. 라이브러리를 만들 때
 */

// 제네릭을 활용한 클래스
class Box<T> {
  T value;

  Box(this.value);

  T getValue() {
    return value;
  }

}

void main() {
  // 제네릭 사용해보기
  var strBox = Box<String>("Hello, Dart"); // 사용 시점에 데이터 타입을 지정할 수 있다.

  var intBox = Box<int>(10);

  // 1. 값 꺼내는 방법
  var findData1 = strBox.getValue();
  print(findData1);
  var findData2 = intBox.getValue();
  print(findData2);

  var numbers = [1, 2, 3, 4, 5];
  var firstEven = findFirst(numbers, (n) => n % 2 == 0);
  print(firstEven);

}

// 심화
// 제네릭 함수 - 설계
T? findFirst<T>(List<T> items, bool Function(T) check) {
  var count = 0;
  // 요소의 처음부터 끝까지 반복
  for(var item in items) {
    count++;
    print("count : $count, item : $item");

    if(check(item)) {
      // check는 함수이다.
      return item;
    }
  }

  return null;
}