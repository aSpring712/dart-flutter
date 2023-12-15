void main() async { // async awiat로 비동기로 돌아가는 함수라고 명시해주어야 함(동기적 처리로 수행해라)

  // 비동기 프로그래밍 - Future 타입에 데이터를 받아서 처리해야 된다(소화 시킨다 라고 표현해보자)
  // --> 소화 시키는 방법 1, 2
  //

  // 동기적 -> task 1, 2, 3 순차적으로 실행됨
  print("task 1..........");
  var data1 = await fetchData(); // 2초 멈췄다가 아래로 내려가지만 비동기 통신을 하므로 그대로 내려감
  print("task 2.......... ${data1}"); // Future<String> // async await 걸어주니 순서대로 작동하고 2초 딜레이 됐다가 '2초 후 data'라고 뜸
  print("task 3..........");
  
}

Future<String> fetchData() {
  // 통신이라고 가정하고 2초 뒤에 data를 응답
  return Future.delayed(Duration(seconds: 2), () {  // future의 시간을 2초간 멈춤
    // 연산 수행 or DB에서 data를 가져오는 등으 ㅣ작업...
    return "2초 후 data";
  } );
}