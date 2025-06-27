void main() {
  //   Завдання 2: Оператори порівняння
  // 1) Створіть змінну number.
  // 2) Перевірте:
  // Чи більше число за 50.
  // Чи менше число за 100.
  // Чи ділиться число на 5 без залишку.
  // 3) Виведіть всі результати.

  int number = 123;
  int number1 = 50;
  int number2 = 100;
  int divider = 5;

  bool isNumberMoreNumber1 = number > number1;
  bool isNumberLessNumber2 = number < number2;
  int remainder = number % divider;
  bool isRemainder = remainder > 0 ? false : true;

  print('''
    The $number is more than $number1: $isNumberMoreNumber1
    The $number is less than $number2: $isNumberLessNumber2
    Is $number divisible by $divider without a remainder: $isRemainder
    ''');
}
