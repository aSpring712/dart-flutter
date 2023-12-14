void main() {

  // 1.
  String? maybeName;
  int length = maybeName?.length ?? 0; // null check 연산자 ? |||  ?? null이 아니면 문자열 길이 출력, null이면 0을 반환함
  print(length);
}