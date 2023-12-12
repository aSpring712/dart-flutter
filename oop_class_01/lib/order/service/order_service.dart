import '../order.dart';

abstract class OrderService {
  // 하는 일 : 주문 생성
  Order createOrder(num memberId, String itemName);
}