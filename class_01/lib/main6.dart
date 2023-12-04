// Set : 중복되지 않는 항목들에 집합을 저장하는데 사용
void main() {
  // 중괄호 리터럴을 사용
  Set<int> uniqueNumbers = {1, 2, 3, 1, 2};
  print(uniqueNumbers); // {1, 2, 3} 만 찍힘 -> 중복 XX

  Set<String> weekDay = {"Sun", "Mon", "Tue", "Wed"};
  print(weekDay);
}