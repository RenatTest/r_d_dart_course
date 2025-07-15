// abstract interface

abstract interface class SomeInterface {}

// Що це таке?
// Це новий синтаксис у Dart (з версії 3), який чітко вказує, що клас:
// є інтерфейсом (contract),
// і його можна реалізовувати (implements),
// але не можна успадковувати (extends) для наслідування поведінки.
// Це як договір, що каже: "Ти маєш реалізувати ВСЕ, що я описую. Без винятків."

// Навіщо це потрібно?
// Коли ти хочеш створити чистий інтерфейс, без жодної реалізації;
// Для чистої абстракції — 100% контракт;
// Коли треба захистити реалізацію (щоб ніхто не наслідував поведінку, лише реалізовував API).

// | Ознака                           | `abstract class` | `abstract interface class` |
// | -------------------------------- | ---------------- | -------------------------- |
// | Можна реалізувати (`implements`) | ✅                | ✅                          |
// | Можна наслідувати (`extends`)    | ✅                | ❌                          |
// | Може мати реалізацію методів     | ✅                | 🔁 Можна, але це рідко     |
// | Вимагає реалізувати всі методи?  | ❌ Ні             | ✅ Так                      |

abstract interface class Logger {
  void log(String message);
}

// Реалізація через implements
class ConsoleLogger implements Logger {
  @override
  void log(String message) {
    print('Лог: $message');
  }
}

void main() {
  Logger logger = ConsoleLogger();
  logger.log('Привіт із Dart!');
  print('------------------');
  Logger2 logger2 = ConsoleLogger2();
  logger2.log('Все працює');
  logger2.warn('Щось пішло не так');
}

// Пояснення:
// Logger — інтерфейс, як у Java чи TypeScript;
// ConsoleLogger реалізує його, тобто зобов’язаний реалізувати всі методи;
// Це не наслідування поведінки, а реалізація контракту.

// ❗️ Популярна помилка:
// class MyLogger extends Logger {} // ❌ Помилка: не можна extends для interface
// abstract interface class не дозволяє extends, лише implements.

// 🔸 Це інтерфейс — чистий контракт
abstract interface class Logger2 {
  void log(String message);
  void warn(String message);
}

// 🔹 Реалізація інтерфейсу (implements)
class ConsoleLogger2 implements Logger2 {
  @override
  void log(String message) {
    print('ЛОГ: $message');
  }

  @override
  void warn(String message) {
    print('⚠️ УВАГА: $message');
  }
}

// Що тут відбувається:
// Logger2 — це abstract interface class (тільки контракт).
// ConsoleLogger2 реалізує Logger2 через implements, тому повинен реалізувати всі методи.
// У main() ми працюємо з об'єктом через інтерфейс — це класичне ООП.
