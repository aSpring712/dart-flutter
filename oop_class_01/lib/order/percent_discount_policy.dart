import 'package:oop_class_01/member/grade.dart';
import 'package:oop_class_01/member/member.dart';
import 'package:oop_class_01/order/discount_policy.dart';

class PercentDiscountPolicy implements DiscountPolicy {

  double discountPercent = 10; // 10% 할인

  @override
  int discount(Member member, int price) {
    if(member.grade == Grade.VIP) {
      return (price * (discountPercent / 100)).toInt(); // 명시적 형 변환
    }
    return 0; // VIP가 아니면 할인금액은 0원
  }

}