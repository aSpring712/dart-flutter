
// 구현 class이므로 abstract 붙이지 않음
import 'package:oop_class_01/member/member.dart';
import 'package:oop_class_01/member/repository/member_repository.dart';

// 메모리에 회원에 대한 데이터를 저장(변수, 자료구조 List Map Set계열 ...)
class MemoryMemberRepositoryImpl implements MemberRepository {

  // 자료구조에 원하는 것 넣기
  Map<num, Member> memberStore = {}; // {} 리터럴

  @override
  Member? findById(num memberId) {
    return memberStore[memberId];
  }

  @override
  void save(Member member) {
    // 메모리 찾아가야 함
    memberStore[member.id] = member;
  }

}