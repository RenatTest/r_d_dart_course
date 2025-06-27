void main() {
  //   Завдання 10: Break і Continue
  // 1) Створіть цикл for від 1 до 20.
  // 2) Якщо число ділиться на 3 без залишку — пропустіть його (continue).
  // 3) Якщо число більше 15 — зупиніть цикл (break).
  // Виведіть тільки ті числа, які пройшли обидві перевірки.

  int number = 20;
  int stopNumber = 15;
  int divider = 3;

  for (int i = 1; i <= number; i++) {
    if (i % divider == 0) continue;
    if (i > stopNumber) break;
    print(i);
  }
}
