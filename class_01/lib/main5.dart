// Map : 키 - 값을 쌍으로 저장하는데 사용

void main() {
  // List와 다르게 중괄호를 사용
  Map<String, int> ages = {'홍길동' : 20, '티모' : 100};
  print(ages);

  // Map은 순서가 없음
  Map<String, String> myDetails = {
    'name' : '야스오',
    'address' : 'USA',
    'tel' : '010-1234-1234'
  };

  print(myDetails['name']);
  print(myDetails['address']);
  print(myDetails['tel']);

  // Map 덮어쓰기 가능
  myDetails['tel'] = '010-9999-8888';
  print(myDetails['tel']);
}