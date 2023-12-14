void main() {
  // 비동기 프로그래밍 - Future

  // 동기적 -> task 1, 2, 3 순차적으로 실행됨
  print("task 1..........");
  var data1 = fetchData();
  print("task 2.......... ${data1}"); // Future<String>
  print("task 3..........");
  
}

Future<String> fetchData() {
  // 통신이라고 가정하고 2초 뒤에 data를 응답
  return Future.delayed(Duration(seconds: 2), () {  // future의 시간을 2초간 멈춤
    // 연산 수행 or DB에서 data를 가져오는 등으 ㅣ작업...
    return "2초 후 data";
  } );
}