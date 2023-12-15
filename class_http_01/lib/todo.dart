// {
// "userId": 1,
// "id": 1,
// "title": "delectus aut autem",
// "completed": false
// }

// class 설계
class Todo {
  // 따로 설정하지 않으면 key 값은 동일하게 해주어야 한다.
  int userId;
  int id;
  String title;
  bool completed;

  // 객체를 만들기 위한 생성자 호출
  Todo(this.userId, this.id, this.title, this.completed);

  // dart 에서는 JSON 파싱을 하기 위해 반드시 Map 구조를 먼저 만들어 주어야 함


  // 이름이 있는 생성자 (명명된 생성자)
  // 이름이 있는 생성자에 파라미터를 설정했다면 생성자에 값을 전달해야 객체가 만들어 진다.
  // JSON 문자열에서 Key값은 모두 String, value는 type이 다양하므로 dynamic type
  Todo.fromJson(Map<String, dynamic> jsonMap)
      : userId = jsonMap['userId'], // : 생성자 초기화 이니셜 라이저 사용해보기
        id = jsonMap['id'],
        title = jsonMap['title'],
        completed = jsonMap['completed'];

  @override
  String toString() {
    return 'Todo{userId: $userId, id: $id, title: $title, completed: $completed}';
  }
}