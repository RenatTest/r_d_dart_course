void main() {
  //   Завдання 8: Цикли for
  // 1) Виведіть всі числа від 1 до 10.
  // 2) Виведіть тільки парні числа.
  // 3) Обчисліть суму чисел від 1 до 10.

  int number = 10;

  // 1
  for (int i = 1; i <= number; i++) {
    print(i);
  }

  // 2
  for (int i = 1; i <= number; i++) {
    if (i % 2 == 0) {
      print(i);
    }
  }

  // 3
  int sum = 0;
  for (int i = 0; i <= number; i++) {
    sum += i;
  }
  print('Sum all numbers from 0 to 10: $sum');
}
