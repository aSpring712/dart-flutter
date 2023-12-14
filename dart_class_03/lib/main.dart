import 'package:dart_class_03/number_printer.dart';

void main() {
  // 메모리에 올리기
  // 번호표 뽑는 기계 1
  NumberPrinter numberPrinter1 = NumberPrinter(1);
  numberPrinter1.printWaitNumber(); // 고객 1이 옴 -> 1
  numberPrinter1.printWaitNumber(); // 고객 2가 옴 -> 2
  numberPrinter1.printWaitNumber(); // 고객 3이 옴 -> 3

  // 번호표 뽑는 기계 2
  NumberPrinter numberPrinter2 = NumberPrinter(2);
  numberPrinter2.printWaitNumber(); // 고객 4가 옴 -> 1
  numberPrinter2.printWaitNumber(); // 고객 5가 옴 -> 2
  numberPrinter2.printWaitNumber(); // 고객 6가 옴 -> 3

  // 인스턴스들 끼리 공유하는 데이터가 필요 -> static으로 선언!!!
}