// Task 1: Списки (List)

// 1. Створіть список numbers зі 100 елементів. Кожен елемент — випадкове число від 0 до 100 (використайте Random().nextInt(101)).
// 2. Виведіть цей список на екран.
// 3. Виведіть на екран 65-й елемент списку у форматі: "65-й елемент: [значення]".
// 4. Вставте число 1000000000 на 50-ту позицію списку.
// 5. Видаліть зі списку елементи зі значеннями: 24, 45, 66, 88.
// 6. За допомогою циклу for переберіть список. Під час перебору:
//  - Порахуйте суму всіх елементів, що діляться на 3 без залишку.
//  - Виведіть результат.
// 7. Створіть порожній список temp. За допомогою циклу for-in переберіть numbers. Додайте до temp лише ті елементи, що діляться на 2 без залишку.
// 8. Виведіть довжину списку temp.

import 'dart:math';

void main() {
  final numbers = List.generate(100, (index) => Random().nextInt(101));
  print(numbers);
  print('-------------------------------');
  print('65-й елемент: ${numbers[65]}');
  print('-------------------------------');
  numbers[50] = 1000000000;
  numbers.removeWhere((element) => [24, 45, 66, 88].contains(element));
  // numbers.removeWhere([24, 45, 66, 88].contains);

  int sumElements3 = 0;
  for (var i = 0; i < numbers.length; i++) {
    if (numbers[i] % 3 == 0) sumElements3 += numbers[i];
  }
  print('Сума елементів, що діляться на 3: $sumElements3');
  print('-------------------------------');
  final temp = [];
  for (var element in numbers) {
    if (element % 2 == 0) temp.add(element);
  }
  print('Довжина списку temp: ${temp.length}');
}
