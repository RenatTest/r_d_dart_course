// Class modifiers base mixin

// 1. base mixin
// base mixin — це mixin, який дозволено використовувати для змішування тільки всередині бібліотеки, де він оголошений.
// Позабібліотечно використовувати with baseMixin заборонено.
// Це дозволяє контролювати поширення поведінки.

base mixin Logger {
  void log(String message) => print('Log: $message');
}

// Усередині бібліотеки
base class MyClass with Logger {}

// Позабібліотечно:
// class OtherClass with Logger {} // ❌ Помилка: Logger є base mixin

// 2. base mixin class
// Поєднує в собі можливості base class та mixin class.
// Також обмежує застосування за межами бібліотеки.
// Може мати конструктори, поля, реалізації.

base mixin class Auditable {
  DateTime? lastModified;

  void audit() {
    lastModified = DateTime.now();
    print('Last modified: $lastModified');
  }
}

// Усередині бібліотеки
// class Document with Auditable {} // ❌ Помилка
// Позабібліотечно використання цього mixin class заборонено.

// Супер! Ось короткий приклад з Flutter, де base mixin корисний:

// Файл lib/src/logger.dart
// base mixin Logger {
//   void log(String message) {
//     print('Logger: $message');
//   }
// }

// // Файл lib/src/my_widget.dart
// import 'logger.dart';

// class MyWidget with Logger {
//   void doSomething() {
//     log('MyWidget doing something');
//   }
// }

// // Файл lib/main.dart
// import 'src/my_widget.dart';

// void main() {
//   final widget = MyWidget();
//   widget.doSomething(); // Logger: MyWidget doing something
// }
// Поза бібліотекою (поза lib/src) ти не зможеш змішувати Logger:

// import 'package:your_package/src/logger.dart';

// class OtherClass with Logger {} // ❌ Помилка! Logger — base mixin
