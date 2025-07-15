// Class modifiers abstract

// Що таке abstract?
// Модифікатор abstract використовується для оголошення класів,
// які не можна створити напряму (тобто — не можна викликати new MyAbstractClass()), але які можуть:
// містити незавершені методи (без тіла),
// використовуватися як шаблони для інших класів.

abstract class Animal {
  void makeSound(); // абстрактний метод
}

// Це означає: будь-хто, хто наслідує Animal, має реалізувати makeSound().

// | Операція           | Дозволено? |
// | ------------------ | ---------- |
// | `extends`          | ✅ Так      |
// | `implements`       | ✅ Так      |
// | `mixin on`         | ✅ Так      |
// | Створення інстансу | ❌ Ні       |

class Dog extends Animal {
  @override
  void makeSound() => print('Гав!');
}

void main() {
  Dog dog = Dog();
  dog.makeSound(); // Гав!
}

// 🧠 Часті помилки / нюанси:
// ❌ Не можна створити екземпляр абстрактного класу:
// Animal a = Animal(); // ❌ compile error

// ✅ Можна мати методи з реалізацією в abstract класі:

abstract class Logger {
  void log(String msg);
  void info(String msg) => log('[INFO]: $msg'); // реалізований метод
}

// 🧰 Коли використовувати в Flutter?
// abstract клас з базовою логікою для репозиторіїв або сервісів.

// У BLoC для визначення подій або станів:

abstract class PageState {}

class LoadingState extends PageState {}

class LoadedState extends PageState {}

class ErrorState extends PageState {}
