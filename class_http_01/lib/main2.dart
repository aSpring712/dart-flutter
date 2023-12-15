import 'package:class_http_01/todo.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

main() { // return type 생략 가능

  // 연습 - 1 : 실제 통신을 받아서 파싱 처리 해보시오!!
  // 동기적 방식 사용 가능, 콜백 방식 사용 가능
  fetchTodo().then((res) {
    Map<String, dynamic> jsonStrToMap = json.decode(res.body);
    Todo myTodo2 = Todo.fromJson(jsonStrToMap);
    print(myTodo2);
  });
}

// 비동기 함수 만들기
Future<http.Response> fetchTodo() async {
  // hhtp 통신 요청 시 응답 --> 해당 라이브러리의 데이터 타입을 확인을 해줘야 함
  const url = "https://jsonplaceholder.typicode.com/todos/1";
  //                      문자열을 기준으로 Uri 객체를 만들어 줌
  var response = await http.get(Uri.parse(url)); // 통신하는데 시간이 걸릴 수 있음 -> 동기
  print(response.runtimeType);

  return response;
}