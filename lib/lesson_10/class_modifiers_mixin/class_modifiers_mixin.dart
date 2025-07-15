// Class modifiers mixin

// 🧩 mixin vs mixin class
// 🔎 Що таке mixin?
// mixin — це тип, який додає функціональність до інших класів,
// не створюючи нову ієрархію спадкування. Він не може мати конструкторів.

mixin Loggers {
  void log(String message) => print('LOG: $message');
}

// 🧩 Що таке mixin class?
// mixin class — це клас, який можна використовувати як mixin,
// але на відміну від звичайного mixin, він може мати конструктор, extends, implements, і бути інстанційованим.

mixin class Loggable {
  final DateTime createdAt = DateTime.now();
  void log(String message) => print('$createdAt: $message');
}

// 🔬 Основна різниця:
// | Характеристика                    | `mixin`                                      | `mixin class`                         |
// | --------------------------------- | -------------------------------------------- | ------------------------------------- |
// | 🔁 Можна змішувати (`with`)       | ✅                                            | ✅                                     |
// | 🧱 Має конструктор                | ❌                                            | ✅                                     |
// | 🧬 Має `extends` або `implements` | ❌                                            | ✅                                     |
// | 🧠 Має поведінку + стан           | ✅ (але без конструктора)                     | ✅ (повноцінно, як звичайний клас)     |
// | 🧰 Типове застосування            | Невеликий функціональний “впорскувач”        | Більш складна поведінкова модель      |
// | ⚠️ Обмеження                      | Не можна інстанціювати, не можна наслідувати | Повноцінний клас, який можна поширити |

// 📌 Коли використовувати:
// mixin — коли хочеш легку поведінку без стану (логер, кэш, віджет-хелпер).
// mixin class — коли потрібна повноцінна логіка з полями,
// конструкторами, або хочеш дозволити інстанціювання або спадкування.

// ❗ Часте непорозуміння:
// 🤯 mixin != mixin class: перший — обмежений, другий — майже як звичайний клас.

// ✅ mixin — простий приклад (без стану)

mixin Logger {
  void log(String message) {
    print('📝 $message');
  }
}

class MyService with Logger {
  void fetchData() {
    log('Дані завантажуються...');
    // логіка
  }
}

// ✅ mixin class — складніший приклад (зі станом)

mixin class CounterMixin {
  int _count = 0;

  void increment() {
    _count++;
    print('🔢 Поточне значення: $_count');
  }
}

class CounterService with CounterMixin {}

void main() {
  final service = MyService();
  service.fetchData(); // 📝 Дані завантажуються...
  print('---------------------------------------------');
  final counter = CounterService();
  counter.increment(); // 🔢 Поточне значення: 1
  counter.increment(); // 🔢 Поточне значення: 2
}

// 🔍 mixin не дозволяє мати приватні поля чи конструктори,
// а mixin class — дозволяє. Це головна практична відмінність.
