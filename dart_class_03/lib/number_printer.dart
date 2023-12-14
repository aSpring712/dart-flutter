class NumberPrinter {
  // 접근 제어 지시자 -> private, public 2개
  int _id; // private으로 선언
  static int waitNubmber = 1;

  // 단 {} 옵셔널로 파라미터를 설정하면 private으로 된 변수는 this._id를 바로 할당할 수 없다
  NumberPrinter(this._id); // 기본 생성자, 명명된 생성자(네임드 - 이름이 명명된)

  void printWaitNumber() {
    print(" 대기 순번 : $waitNubmber");
    waitNubmber++;
  }

}