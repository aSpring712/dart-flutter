
// List : 순서대로 정렬된 항목들의 잡합을 저장하는데 사용
void main() {

  // generic
  List<int> numbers = [1, 2, 3, 4, 5]; // 표현식 : 리터럴 -> 리스트에 리터럴로 초기화 했다.
  print(numbers);

  List<String> names = ["홍길동", "이순신", "티모", "야스오"]; // 리터럴로 초기화
  print(names); // List는 index 연산이 가능
  print("Value of names[0] is ${names[0]}"); // 연산이 들어가면 반드시 { } 중괄호 필요
  print(names.length); // 길이는 4, index의 크기는 n-1개로 3

}