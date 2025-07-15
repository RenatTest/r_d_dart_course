// Class without modifiers

// 🕊️ Крок 1: Без модифікатора (class, mixin)
// Що це?
// Стандартна поведінка — усі операції дозволені: можна створювати екземпляри,
// успадковувати (extends), реалізовувати (implements), використовувати як mixin.
// Фундаментальна поведінка Dart до версії 3, або в контексті пакету без додаткових обмежень

// Для чого?
// Коли немає потреби обмежувати використання класу — просто звичайний клас.

// Права:
// ✅ Конструктор.
// ✅ extends.
// ✅ implements.
// ✅ with (mixin).

// Приклад:

class Person {
  String name;
  Person(this.name);

  void greet() => print('Привіт, $name!');
}

class FriendlyPerson extends Person implements Comparable<Person> {
  FriendlyPerson(String name) : super(name);
  @override
  int compareTo(Person other) => name.compareTo(other.name);
}

// Цей клас:
// створюється (new Person(...)),
// наслідується (extends),
// реалізується (implements),
// змішується (with).

// 🔍 Особливості:
// Без обмежень — підійде для простих сценаріїв.
// Але не явно показує бібліотечні наміри; для масштабних API краще використовувати модифікатори.
