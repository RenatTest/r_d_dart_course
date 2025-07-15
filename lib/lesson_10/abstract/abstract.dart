// 🔸 Абстрактний клас

// abstract class — це клас, який не можна створити напряму
// (тобто не можна написати new MyAbstractClass()), але його можна наслідувати.
// Він часто описує загальну поведінку або структуру, яку мають мати інші класи.
// Тобто це як "шаблон" для інших класів.

// Навіщо це потрібно?
// Щоб:
// Уникнути дублювання коду;
// Визначити "контракт": які методи має реалізовувати підклас;
// Побудувати ієрархію класів (наприклад, у грі: Character → Enemy, Hero).

// Як це використовують у Flutter/Dart?
// Наприклад, ти описуєш загальний стан:

abstract class AppState {}

class LoadingState extends AppState {}

class LoadedState extends AppState {}

// Ще приклад:

abstract class UserRepository {
  Future<String> getUserName();
}

class FirebaseUserRepository implements UserRepository {
  @override
  Future<String> getUserName() async => 'Імʼя з Firebase';
}

//  Роль в ООП
// Це наслідування — дозволяє створювати нові класи, що "розширюють" базовий функціонал.
// ❗️Поширені помилки:
// ❌ Не можна створити об'єкт абстрактного класу: Animal animal = Animal(); — помилка.
// ❌ Якщо абстрактний метод не реалізований у підкласі — теж помилка.

// | Пункт                          | Значення                     |
// | ------------------------------ | ---------------------------- |
// | Чи можна створити обʼєкт?      | ❌ Ні                        |
// | Можна наслідувати?             | ✅ Так                        |
// | Має реалізацію методів?        | Може мати                    |
// | Обов’язково реалізовувати все? | ❌ Ні, якщо далі теж abstract |

void main() {
  // Animal animal = Animal(); // ❌ Це викличе помилку — не можна створити об'єкт abstract class
  final dog = Dog();
  final cat = Cat();
  final tiger = Tiger();
  dog.makeSound();
  dog.sleep();
  print('------------------');
  cat.makeSound();
  cat.sleep();
  print('------------------');
  tiger.makeSound();
  tiger.sleep();
}

abstract class Animal {
  void makeSound(); // метод без реалізації
  void sleep() {
    print('Zzz...'); // метод з реалізацією
  }
}

// Animal — абстрактний клас, який не можна створити напряму.
// Dog — клас, який успадковує Animal через extends.
// Dog зобов'язаний реалізувати абстрактні методи (makeSound()).
// Але може використовувати реалізовані методи (sleep()).

// 🔹 Підклас, який наслідує abstract class
class Dog extends Animal {
  @override
  void makeSound() {
    // обов'язково реалізувати метод
    print('Гав-гав!');
  }
}

// 🔹 Підклас, який наслідує abstract class
class Cat extends Animal {
  @override
  void makeSound() {
    print('Няв-няв!');
  }
}

// 🔹 Підклас, який наслідує abstract class
class Tiger extends Animal {
  @override
  void makeSound() {
    print('Рррррр-няв!');
  }
}
