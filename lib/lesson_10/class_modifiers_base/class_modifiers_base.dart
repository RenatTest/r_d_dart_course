// Class modifiers base

// 🔎 Що таке base?
// base — це обмеження наслідування, яке каже:
// "Цей клас МОЖНА наслідувати або реалізовувати, але лише якщо твій клас теж base, final, або sealed."

// 🧩 Навіщо?
// Щоб:
// Зробити API розширюваним, але контрольованим.
// Гарантувати, що усі підкласи будуть відомі (зокрема для sealed).
// Дозволити безпечне рефакторинг та зміну структури.

// | Операція           | Дозволено?                         |
// | ------------------ | ---------------------------------- |
// | `extends`          | ✅ Але **лише з base/final/sealed** |
// | `implements`       | ✅                                  |
// | `mixin on`         | ✅                                  |
// | Створення інстансу | ✅                                  |

// 📌 Приклад:

base class Vehicle {
  void drive() => print('Їде...');
}

// ✅ дозволено: base наслідує base
base class Car extends Vehicle {}

// ❌ НЕ дозволено: звичайний клас не може наслідувати base
// class Bike extends Vehicle {} // Compile error

// 🧰 Коли використовувати?
// Базові класи для BLoC або внутрішніх компонентів,
// які хочете, щоб розширювали тільки в рамках вашої системи:

base class AppState {}

final class Loading extends AppState {}

final class Loaded extends AppState {}
