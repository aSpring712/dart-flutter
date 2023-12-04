void main() {
  
  var myVariable = 50; // 값을 넣는 순간 컴파일 시점에 데이터 타입이 결정 됨
  // myVariable = "Hello"; // Error 발생
  // var 키워드를 사용해서 처음 데이터 타입이 결정되면 변경할 수 없다.

  print(myVariable.runtimeType); // 실행 시점의 데이터 타입을 알려줌

  var name = "John"; // 문자열
  var age = 30; // 정수
  var height = 180.5; // 실수
  var numbers = [1, 2, 3, 4, 5]; // 컴파일 시점에 data type이 List가 됨
  var uniqueNumbers = {1, 2, 3, 4, 5}; // Set
  var person = {'name': '티모', 'age' : 30, 'isStudent' : " true"}; // Map -> generic으로 <String, String> 선언하지 않고 '티모', 30, true 같이 다양한 type을 넣을 수 있음
}