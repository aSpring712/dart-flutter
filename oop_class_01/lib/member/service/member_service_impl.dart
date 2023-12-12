import 'package:oop_class_01/member/repository/member_repository.dart';
import 'package:oop_class_01/member/service/member_service.dart';

import '../member.dart';

class MemberServiceImpl implements MemberService {

  // 회원가입, 조회
  // 회원 등급 : 일반, VIP

  /**
   * 의존 관계 -> 포함 관계
   * SOLID 중 DIP - Dependency Inversion Principal
   * 상위 모듈은 하위 모듈에 의존해서는 안된다. 상위 모듈과 하위 모듈은 추상화에 의존해야 한다.
   * 즉, 의존성은 추상화에 대해 이루어져야 하며, 세부 사항에 대해 이루어져서는 안된다.
   */
  // MemberRepository memberRepository = MemberRepositoryImpl();
  // MemoryMemberRepositoryImpl
  // DB 쓴다고 할 수도 있으니

  MemberRepository memberRepository;

  // 외부에서 의존받도록 하는게 좋음
  // 생성자 의존 주입
  MemberServiceImpl(this.memberRepository);

  @override
  Member? findByIdMember(num memberId) {
    return memberRepository.findById(memberId);
  }

  @override
  void signUp(Member member) {
    memberRepository.save(member);
  }

}