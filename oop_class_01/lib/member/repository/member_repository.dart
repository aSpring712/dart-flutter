// dart interface 라는 키워드를 제공하지 않는다.

// 추상 class로 사용
// interface이므로 역할만 가지고 있음(역할만 선언한다.) -> 구현체는 메모리가 될 수도 db가 될 수도 있음
// 일단 memory db로 만들것. 이 녀석의 구현체는 memory_member_repository_impl
import 'package:oop_class_01/member/member.dart';

abstract class MemberRepository {

  void save(Member member);
  Member? findById(num memberId); // DB, 메모리, 사용자가 없는 경우가 있음 -> 예외처리 -> 간단하게 nullable로 바꾸기(?)

}