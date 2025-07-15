// Class modifiers abstract mixin

// 🔹 abstract mixin class
// Це повноцінний абстрактний клас, який можна змішувати як mixin.
// Він може мати реалізовані і абстрактні методи, поля, конструктори.
// Дає повну гнучкість і поєднує все: abstract, class, mixin.

abstract mixin class FormValidator {
  bool validate(String input);

  void showError() => print('❌ Некоректне значення');
}

class EmailValidator with FormValidator {
  @override
  bool validate(String input) => input.contains('@');
}

void main() {
  final validator = EmailValidator();
  print(validator.validate('hello@dev.com')); // true
  print(validator.validate('nodogmail')); // false
}
