// ignore_for_file: dead_code

void main() {
  //   Завдання 3: Логічні оператори
  // 1) Створіть змінні hasMoney і isStoreOpen (типу bool).
  // 2) Перевірте:
  // Чи можна зробити покупку (якщо є гроші і магазин відкритий).
  // Чи потрібно почекати (якщо магазин закритий або немає грошей).
  // 3) Використайте оператори &&, ||, !.

  bool hasMoney = true;
  bool isStoreOpen = true;

  bool canMakePurchase = hasMoney && isStoreOpen;
  print('You can make purchase: $canMakePurchase');

  bool needWait = (!hasMoney || isStoreOpen) || (hasMoney || !isStoreOpen);
  print('You need wait: $needWait');
}
