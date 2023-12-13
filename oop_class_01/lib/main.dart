
// 코드의 시작점
import 'package:oop_class_01/app_config.dart';
import 'package:oop_class_01/member/grade.dart';
import 'package:oop_class_01/member/member.dart';
import 'package:oop_class_01/member/repository/member_repository.dart';
import 'package:oop_class_01/member/repository/memory_member_repository_impl.dart';
import 'package:oop_class_01/member/service/member_service.dart';
import 'package:oop_class_01/member/service/member_service_impl.dart';
import 'package:oop_class_01/order/discount_policy.dart';
import 'package:oop_class_01/order/fix_discount_policy.dart';
import 'package:oop_class_01/order/order.dart';
import 'package:oop_class_01/order/service/order_service.dart';
import 'package:oop_class_01/order/service/order_service_impl.dart';

void main() {
  // 관심 분리
  AppConfig appConfig = AppConfig(); // 객체를 app config에서만 땡겨오면 됨

  MemberRepository memberRepository = appConfig.getMemberRepository();
    // MemoryMemberRepositoryImpl();

  MemberService memberService = appConfig.getMemberService();
    // MemberServiceImpl(memberRepository);

  DiscountPolicy discountPolicy = appConfig.getDiscountPolicy();
    // FixDiscountPolicy();
  OrderService orderService = appConfig.getOrderService();
    // OrderServiceImpl(memberRepository, discountPolicy);

  // mock 유저 생성
  Member newMember = Member(id: 200, name: '야스오', grade: Grade.VIP);
  // 회원가입 처리
  memberService.signUp(newMember); // 메모리 저장
  // 회원 조회
  Member? findMember = memberService.findByIdMember(200);
  print(findMember.toString());

  // Order order1 = orderService.createOrder(200, '맥북', 2000000); // 오류가 나는게 정상
  Order order1 = orderService.createOrder(findMember?.id ?? 200, '맥북', 2000000); // 오류가 나는게 정상
  print(order1);

}