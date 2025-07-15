// Class modifiers abstract interface

// 🔎 Що таке abstract interface class?
// Це контракт без інстанцій, який:
// Не можна створити напряму
// Має бути реалізований через implements
// ✅ Може мати реалізовані методи, але вони не передаються при implements
// Тобто, навіть якщо метод реалізовано в abstract interface, ти все одно маєш його перевизначити.

// 📌 Приклад:
abstract interface class Logger {
  void log(String msg); // обов’язковий
  void info(String msg) => log('[INFO] $msg'); // реалізація
}

class MyLogger implements Logger {
  @override
  void log(String msg) => print(msg);
  // 🧠 info не передається автоматично — треба реалізувати самостійно!
  @override
  void info(String msg) => log('Some message');
}

// 🧠 Часті помилки:
// Думають, що реалізовані методи будуть "успадковані" — ні!
// Цей тип класів має сенс лише в межах бібліотеки, де extends дозволений — тоді реалізація передається.
// Позабібліотечно — implements → ти маєш писати всю реалізацію з нуля.

// ✅ Що дозволено:

// | Операція           | Дозволено?                  |
// | ------------------ | --------------------------- |
// | `implements`       | ✅ Обов'язкове               |
// | `extends`          | ✅ тільки в межах бібліотеки |
// | `mixin on`         | ✅                           |
// | Створення інстансу | ❌                           |

// 🧰 Коли використовувати?
// У бібліотеках Dart/Flutter — як чисті контракти.

// Наприклад:
// UserRepository інтерфейс
// ThemeProvider інтерфейс
// State/Event класи для BLoC
// CacheStrategy, StorageAdapter, HttpClient

// ✅ Реалізація у Flutter-проєкті
// === Контракт ===
abstract interface class UserRepository {
  Future<User> fetchUser();
  void log(String message) => print('[UserRepository]: $message');
}

// === Реалізація ===
class FirebaseUserRepository implements UserRepository {
  @override
  Future<User> fetchUser() async {
    log('Завантаження користувача з Firebase...');
    await Future.delayed(Duration(seconds: 1));
    return User('Renat', 39);
  }

  @override
  void log(String message) {
    print('🔥 Firebase: $message');
  }
}

// === Модель ===
class User {
  final String name;
  final int age;
  User(this.name, this.age);
}

// === main() ===
void main() async {
  final UserRepository repo = FirebaseUserRepository();

  repo.log('Запуск...');
  User user = await repo.fetchUser();

  print('👤 Користувач: ${user.name}, ${user.age} років');
}
// ⚠️ Метод log() реалізовано в abstract interface, 
// але його все одно треба перевизначити — Dart цього не робить автоматично.