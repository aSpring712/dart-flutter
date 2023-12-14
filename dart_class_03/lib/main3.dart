void main() {

  // 1.
  String? maybeName;
  int length = maybeName?.length ?? 0; // null check 연산자 ? |||  ?? null이 아니면 문자열 길이 출력, null이면 0을 반환함
  print(length);

  // 2.
  String? name = getName(); // ABC
  // 데이터의 가공 -> 전부 소문자로 바꾸는 기능을 호출
  // String? returnName = name?.toLowerCase();
  String returnName = name?.toLowerCase() ?? "DDD";
  print(returnName);
}

String? getName() { // String과 String? 은 서로 다른 타입이다
  return "ABC"; // return할 수 있는 값 -> 문자열, null ...
}

