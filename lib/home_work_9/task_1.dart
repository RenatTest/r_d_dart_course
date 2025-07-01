// Simple constructor

void main() {
  // 1
  final person = Person(name: 'Renat', age: 39);
  print('1. ${person.name}, ${person.age}');
  // 2
  final areaFigure = Rectangle(20.0, 30.0);
  areaFigure.area();
  // 3
  final bookInfo = Book(
    'The experience of a fool',
    'Mirzakarim Norbekov',
    1000,
  );
  print(bookInfo.description());
  // 4
  final car = Car('Ford', 1922, 40000);
  print(car);
  // 5
  final bankAccount = BankAccount(
    accountNumber: 22,
    owner: 'Renat',
    // balance: 50000,
  );
  print(bankAccount);
}

// Завдання 1:
// Створи клас Person, який має поля name (рядок) та age (ціле число).
// Додай звичайний конструктор, який ініціалізує ці поля.
class Person {
  final String name;
  final int age;

  Person({required this.name, required this.age});
}

// Завдання 2:
// Створи клас Rectangle, який має поля width і height (обидва — типу double).
// Додай звичайний конструктор, який ініціалізує поля.
// Додай метод area(), який повертає площу.
class Rectangle {
  final double width;
  final double height;

  Rectangle(this.width, this.height);

  area() {
    print(
      '2. Площа фігури зі сторонами $width та $height дорівнює: ${width * height}',
    );
  }
}

// Завдання 3:
// Створи клас Book, який має поля title, author, pages.
// Реалізуй звичайний конструктор.
// Додай метод description(), який повертає рядок у форматі:
class Book {
  final String title;
  final String author;
  final int pages;

  Book(this.title, this.author, this.pages);

  String description() => '3. $title by $author, $pages pages';
}

// Завдання 4
// Створи клас Car з полями:
// String model
// int year
// double price

class Car {
  final String model;
  final int year;
  final double price;

  Car(this.model, this.year, this.price);

  @override
  String toString() => '4. Car: $model, year: $year, price: $price';
}

// Завдання 5 — BankAccount
// Створи клас BankAccount з полями:
// String accountNumber
// String owner
// double balance
// Зроби звичайний конструктор, який ініціалізує всі поля.
// Баланс можна передавати як опціональний параметр, за замовчуванням 0.0.

class BankAccount {
  final int accountNumber;
  final String owner;
  final double balance;

  BankAccount({
    required this.accountNumber,
    required this.owner,
    this.balance = 0.0,
  });

  @override
  String toString() =>
      '5. Bank account number: $accountNumber, owner: $owner, balance: $balance';
}
