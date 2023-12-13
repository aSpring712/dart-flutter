
// 구현 class이므로 abstract 붙이지 않음
import 'package:oop_class_01/member/member.dart';
import 'package:oop_class_01/member/repository/member_repository.dart';

// 메모리에 회원에 대한 데이터를 저장(변수, 자료구조 List Map Set계열 ...)
// 1. dart에서 싱글톤 객체로 설계 하기
class MemoryMemberRepositoryImpl implements MemberRepository {

  // 자료구조에 원하는 것 넣기
  Map<num, Member> _memberStore = {}; // {} 리터럴 // _ 써서 private으로 바꾸기

  // 2. 인스턴스를 저장할 static 변수 선언
  static MemoryMemberRepositoryImpl?_instance;

  // 1. private 생성자를 만들어서 외부에서 호출하지 못하도록 설계 한다.
  MemoryMemberRepositoryImpl._internal(); // 네임드 생성자 만들어 보기

  // 3. 외부에서 호출할 수 있는 factory() 생성자를 만들어 준다.
  factory MemoryMemberRepositoryImpl() {
    if(_instance == null) {
      _instance = MemoryMemberRepositoryImpl._internal(); // 생성자 호출
    }

    // 한 번이라도 메모리에 올라갔다면, 생성하지 않고 return
    return _instance!; // nullable로 선언했기 때문에 null 억제 연산자 !
  }

  @override
  Member? findById(num memberId) {
    return _memberStore[memberId];
  }

  @override
  void save(Member member) {
    // 메모리 찾아가야 함
    _memberStore[member.id] = member;
  }

}