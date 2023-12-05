// 빠른 평가에 대한 개념을 이해해보자.
void main() {

  int num = 5;
  int i = 0;

  // 빠른 평가
  //                          false    &&   --> 뒷 부분은 보나마나 false가 나올 것
  bool value = ( num = num + 10 ) < 10 && ( ( i = i + 2 ) < 10);
  print(num);
  print(i); // 빠른 평가를 해서 앞의 항이 false이므로 후항은 계산할 필요도 없으므로 2가 아닌 0이 나옴

  print("-----------------------------");
  // 둘 중 하나라도 true면 true이기 때문에
  //           false -------------> 얘가 true인지 확인할 필요가 있음
  value = (num = num + 10) < 10 || (i = i + 2) < 10;
  print(num); // 25
  print(i); // 2

  // 빠른 평가가 되는 식을 작성해보기
  print("=============================");
  // 둘 중 하나라도 true면 true이기 때문에
  //           ture -------------> 얘가 true인지 확인할 필요가 없음
  value = (num = num + 10) > 10 || (i = i + 2) < 10;
  print(num); // 25
  print(i); // 2
}