// 역할
// 구현체 -> member_service_impl


import '../member.dart';

abstract class MemberService {

  // 회원가입
  void signUp(Member member);
  // 회원 조회
  Member? findByIdMember(num memberId);

}