import 'grade.dart';

class Member {

  num id;
  String name;
  Grade grade;

  // 생성자 ALT+insert
  // 선택적 매개변수 -> error 나니까 required
  Member({required this.id, required this.name, required this.grade});

  @override
  String toString() {
    return 'Member{id: $id, name: $name, grade: $grade}';
  }

}