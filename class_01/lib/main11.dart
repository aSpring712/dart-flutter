
// 코드의 시작점
// java에서 main, method 호출은 stack이라는 메모리에 뜸
void main() {

  // dart에서는 버전 2.12 버전 이후부터 null safety라고 해서 null 값을 기본적으로 담을 수 없다.
  // String test1 = null; // 실패

  String? test2 = null; // String null optional -> ? 를 붙임으로써 null이 들어갈 수 있다고 명시
  // 변수에 ?를 쓰지 않으면 non-nullable 상태의 변수로 null 값이 들어갈 수 없음

}