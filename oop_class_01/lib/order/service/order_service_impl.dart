import 'package:oop_class_01/member/repository/member_repository.dart';
import 'package:oop_class_01/order/discount_policy.dart';
import 'package:oop_class_01/order/service/order_service.dart';

import '../../member/member.dart';
import '../order.dart';

class OrderServiceImpl implements OrderService {

  // DIP 원칙에 따라 추상화 된 녀석 선언
  MemberRepository memberRepository;
  DiscountPolicy discountPolicy;

  // DI - 생성자 의존 주입
  OrderServiceImpl(this.memberRepository, this.discountPolicy);

  @override
  Order createOrder(num memberId, String itemName, int itemPrice) {
    // 1. 회원을 찾아서 회원 등급을 확인한다.
    Member? memberEntity = memberRepository.findById(memberId);
    // 회원이 없다면 예외처리 -> 생략
    // ! -> null 억제 연산자 -> memberEntity는 절대 null이 아니라고 강제하는 것
    int discountPrice = discountPolicy.discount(memberEntity!, itemPrice);
    // 2. 회원 등급에 해당하는 할인 정책을 반영한다.

    //              memberEntity.id
    return Order(memberId: memberId, itemName: itemName, itemPrice: itemPrice, discountPrice: discountPrice);
  }

}