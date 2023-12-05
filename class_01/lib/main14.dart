void main() {
  double radius = 5.0;
  double width = 4.0;
  double height = 3.0;

  // 출력 결과 호출
  print(calculateCircleArea(5));
  print(calculateRectangleArea(3, 4));
}

// 원의 면적을 구하는 함수 만들기
double calculateCircleArea(double radius) {
  return (radius * radius * 3.14);
}

// 직사각형의 면적을 구하는 함수 만들기
double calculateRectangleArea(double width, double height) {
  return (width * height);
}