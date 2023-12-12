import 'package:oop_class_01/member/member.dart';

abstract class DiscountPolicy {
  // 할인 처리 - 멤버 등급에 따라 할인 금액 결정(고정, 정율일지는 나중에 결정)
  int discount(Member member, int price);
}