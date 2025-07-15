// Class modifiers interface

// 🔎 Що таке interface?
// interface визначає контракт, який інші класи мають реалізувати через implements.
// На відміну від abstract, interface:
// Може бути не abstract (тобто містити реалізацію),
// Але всі методи мають бути реалізовані при implements — навіть реалізовані!

// ✅ Що дозволено:
// | Операція           | Дозволено?                          |
// | ------------------ | ----------------------------------- |
// | `implements`       | ✅ (вимагає реалізацію всіх методів) |
// | `extends`          | ✅                                   |
// | `mixin on`         | ✅                                   |
// | Створення інстансу | ✅                                   |

// 📌 Приклад:

interface class Greeter {
  void sayHello() => print('Hello!');
}

class MyGreeter implements Greeter {
  @override
  void sayHello() => print('Привіт!');
}
// Навіть якщо Greeter має реалізацію — вона не передається через implements.

// 🧠 Часті помилки:
// ❗️ Люди думають, що interface class працює як abstract class з реалізацією. Але:
// Реалізація ігнорується при implements — тому використовуй лише для API-контрактів.
// Якщо хочеш, щоб реалізація перейшла, використай extends, або mixin, або просто abstract class.

// 🧰 Застосування у Flutter:
// Типові репозиторії, BLoC-інтерфейси, DataSource:

interface class UserRepository {
  // Future<User> getUser();
}

class FirebaseUserRepository implements UserRepository {
  // @override
  // Future<User> getUser() {
  //   // Firebase fetch
  // }
}
