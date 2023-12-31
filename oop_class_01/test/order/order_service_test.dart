import 'dart:math';

import 'package:flutter_test/flutter_test.dart';
import 'package:oop_class_01/member/grade.dart';
import 'package:oop_class_01/member/member.dart';
import 'package:oop_class_01/member/repository/member_repository.dart';
import 'package:oop_class_01/member/repository/memory_member_repository_impl.dart';
import 'package:oop_class_01/order/discount_policy.dart';
import 'package:oop_class_01/order/fix_discount_policy.dart';
import 'package:oop_class_01/order/order.dart';
import 'package:oop_class_01/order/percent_discount_policy.dart';
import 'package:oop_class_01/order/service/order_service.dart';
import 'package:oop_class_01/order/service/order_service_impl.dart';

void main() {

  // 늦게 초기화 되어서 컴파일 시점에선 오류가 나지 않음
  late MemberRepository memberRepository;
  late DiscountPolicy discountPolicy;
  late OrderService orderService;

  // 매번 실행시 마다 초기화 값이 필요하다면
  setUp(() {
    memberRepository = MemoryMemberRepositoryImpl(); // main함수 실행될 때 메모리에 올림
    // discountPolicy = FixDiscountPolicy();
    discountPolicy = PercentDiscountPolicy();
    orderService = OrderServiceImpl(memberRepository, discountPolicy);
  });

  // 단위 테스트 1
  test('주문 테스트 1', () {
    // given
    Member member = Member(id: 100, name: '홍길동', grade: Grade.VIP); // 할인 1500원 되어야 함
    // Member member = Member(id: 100, name: '홍길동', grade: Grade.BASIC); // 할인 안되어야 함
    memberRepository.save(member);

    // when
    // 고정 금액 할인 테스트
    discountPolicy = FixDiscountPolicy();
    Order order1 = orderService.createOrder(member.id, '맥북', 2000000);
    print(order1.toString());
    print(order1.calculateDiscount());

    // then
    // expect(order1.discountPrice, 0);
    // expect(order1.calculateDiscount(), 2000000);

    expect(order1.discountPrice, 200000);
    expect(order1.calculateDiscount(), 1800000);
  });

  // 단위 테스트 2
  test('주문 테스트 2', () {

  });
}