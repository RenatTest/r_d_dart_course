void main() {
  //   Завдання 1: Математичні оператори
  // 1) Створіть змінні довжина і ширина прямокутника (ширина 18.4, висота 30.9)
  // 2) Обчисліть площу і периметр прямокутника.
  // 3) Виведіть площу і периметр.
  // 4) Використайте оператор ~/ для обчислення скільки повних квадратів 1х1 вміщається у площу.

  double rectangleHeight = 18.4;
  double rectangleWidth = 30.9;
  int fullOneSquare = 1 * 1;

  double rectangleArea = rectangleHeight * rectangleWidth;
  double rectanglePerimeter = (rectangleHeight + rectangleWidth) * 2;
  print(
    'Rectangle area is: $rectangleArea\nRectangle perimeter is: $rectanglePerimeter',
  );

  int fullSquaresInArea = rectangleArea ~/ fullOneSquare;
  print('Full squares in area are: $fullSquaresInArea');
}
