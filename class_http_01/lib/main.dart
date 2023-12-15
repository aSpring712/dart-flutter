import 'package:class_http_01/todo.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

main() { // return type 생략 가능


  /** 1 */
  // // main 함수라 비동기처리하기 싫음 -> call back
  // fetchTodo().then((res) {
  //   // 웹 --> HTTP MESSAGE 구성 이해하기!
  //   print(res.headers);
  //   print(res.body); // 통신을 통해서 받은 데이터를 우리 코드상에서 활용해야 함
  //   print("--------------------------");
  //   print(res.body.runtimeType); // String
  //   // res.body.userId // --> DTO 방식
  // });

  // ''' 여러줄 문자열
  String jsonStr = ''' 
            {
              "userId" : 1,
              "id" : 1,
              "title" : "반드시 key값에 쌍따옴표가 있어야 JSON 문자열",
              "completed" : true 
            }
                    ''';

  /** 2 */
  // 2 - 1 JSON 문자열을 파싱해서 Map 객체로 변환 해주기
  // json.deocde() 메서는 JSON 형식의 문자열을 알아서 Map 구조로 파싱해 준다.
  print("원래는 ${jsonStr.runtimeType} 타입"); // String

  Map<String, dynamic> jsonStrToMap = json.decode(jsonStr);

  print(jsonStrToMap.runtimeType); // _Map<String, dynamic)
  print(jsonStrToMap.toString()); // {userId: 1, id: 1, title: 반드시 key값에 쌍따옴표가 있어야 JSON 문자열, completed: true}

  // 이제 key값에 하나 하나 접근해서 값을 가져오거나, 반복문으로 처리할 수 있게 되었음
  jsonStrToMap.forEach((key, value) {
    print("key $key");
    print("value $value");
  });

  print("-----------------------------");

  // class화, 추상화해서 데이터를 편한게 가지고 놀 수 있음
  // 2 - 2 Map 구조의 데이터를 Todo 클래스로 변환 하자
  Todo myTodo1 = Todo.fromJson(jsonStrToMap);
  print(myTodo1.userId);
  print(myTodo1.id);
  print(myTodo1.title);
  print(myTodo1.completed);

  // 실제 통신을 받아서 파싱 처리 해보시오!!
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