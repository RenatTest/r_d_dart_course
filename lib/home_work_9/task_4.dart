// Factory constructor

void main() {
  // 1
  final json = {'userName': 'Renat', 'isAdmin': true};
  final user = User.fromJson(json);
  print(user);
  // 2
  final color = Color.fromHex('#FF00FF');
  // print('2. Color: R=${color.red}, G=${color.green}, B=${color.blue}');
  print(color);
  // 3
  final id1 = IDGenerator.auto();
  final id2 = IDGenerator.auto();
  final id3 = IDGenerator.auto();
  print(id1);
  print(id2);
  print(id3);
  // 4
  final human = Person.young('Kim');
  print(human);
  // 5
  final status = UserStatus.fromAge(22);
  print(status);
  // 6
  final product = Product.fromJson({
    'title': 't-short',
    'price': 30.0,
    'id': 1,
  });
  print(product);
  // 7
  final figure = Rectangle.square(15.2);
  print(figure);
  // 8
  var logger1 = Logger();
  var logger2 = Logger();
  logger1.log('App started');
  logger2.log('User clicked button');
  logger1.printLogs();
}

// Завдання 1 — User
// Створи клас User з полями:
// String username
// bool isAdmin
// Зроби фабричний конструктор:
// factory User.fromJson(Map<String, dynamic> json)
// який створює User з Map:
// {
//   'username': 'Renat',
//   'isAdmin': true
// }

class User {
  final String userName;
  final bool isAdmin;

  User(this.userName, this.isAdmin);

  factory User.fromJson(Map<String, dynamic> json) {
    return User(json['userName'], json['isAdmin']);
  }

  @override
  String toString() => '1. User: $userName, is admin: $isAdmin';
}

// Завдання 2 — Color.fromHex
// Створи клас Color з полями:
// int red
// int green
// int blue
// Додай фабричний конструктор:
// factory Color.fromHex(String hex)
// який:
// Приймає строку виду '#FF00FF'
// Вирізає з неї по 2 символи на кожен колір:
// FF → red
// 00 → green
// FF → blue
// Перетворює ці значення з шістнадцяткового у десятковий формат

class Color {
  final int red;
  final int green;
  final int blue;

  Color(this.red, this.green, this.blue);

  factory Color.fromHex(String hex) {
    Color colorConverted = Color(
      int.parse(hex.substring(1, 3), radix: 16),
      int.parse(hex.substring(3, 5), radix: 16),
      int.parse(hex.substring(5, 7), radix: 16),
    );
    return colorConverted;
  }

  @override
  String toString() => '2. Color: R=$red, G=$green, B=$blue';
}

// Завдання 3 — IDGenerator.auto()
// Створи клас IDGenerator, який:
// Має поле int id
// Має factory-конструктор IDGenerator.auto() — кожен раз генерує унікальний ID (наприклад, +1 до попереднього)
// Технічні деталі:
// Використай статичну змінну для відстеження останнього id
// З кожним новим викликом auto() — інкрементуй її

class IDGenerator {
  final int id;
  static int _lastId = 0; // змінна спільна для усіх об'єктів класу

  IDGenerator._(this.id); // приватний конструктор

  factory IDGenerator.auto() {
    // Фабричний конструктор збільшує _lastId і повертає новий об’єкт
    _lastId++;
    return IDGenerator._(_lastId);
  }

  @override
  String toString() => '3. New ID: $id';
}

// 4. Клас Person
// Поля name і age.
// Фабричний конструктор Person.young(String name), який створює людину з віком 18 років.
// Звичайний конструктор приймає ім’я і вік.

class Person {
  final String name;
  final int age;

  Person(this.name, this.age);

  factory Person.young(String name) {
    return Person(name, 18);
  }

  @override
  String toString() => '4. Person: $name, age: $age';
}

// Завдання 5: UserStatus
// Поле status (рядок).
// Фабричний конструктор UserStatus.fromAge(int age):
// Якщо вік менший 18 — status = "Minor".
// Якщо 18–65 — status = "Adult".
// Якщо більше 65 — status = "Senior".

class UserStatus {
  final String status;

  UserStatus(this.status);

  factory UserStatus.fromAge(int age) {
    String status;
    if (age < 18) {
      status = 'Minor';
    } else if (age >= 18 || age < 65) {
      status = 'Adult';
    } else {
      status = 'Senior';
    }

    return UserStatus(status);
  }

  @override
  String toString() => '5. User status: $status';
}

// Factory part 2

// Завдання 6: Фабричний конструктор із JSON
// Створи клас Product, який має поля:
// id (int)
// title (String)
// price (double)
// Реалізуй фабричний конструктор:
// factory Product.fromJson(Map<String, dynamic> json)
// Цей конструктор повинен створювати об'єкт Product із JSON-мапи.

class Product {
  final int id;
  final String title;
  final double price;

  Product({required this.id, required this.title, required this.price});

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(id: json['id'], title: json['title'], price: json['price']);
  }

  @override
  String toString() => '6. Product name: $title, price: $price, id: $id';
}

// Завдання 7: Клас Rectangle
// Створи клас Rectangle з полями:
// width (double)
// height (double)
// Реалізуй фабричний конструктор Rectangle.square(double size), який створює квадрат (прямокутник зі стороною size).

class Rectangle {
  final double width;
  final double height;

  Rectangle(this.width, this.height);

  factory Rectangle.square(double size) {
    return Rectangle(size, size);
  }

  @override
  String toString() => '7. Rectangle width: $width, height: $height';
}

// Завдання 8: Клас Logger (Singleton через фабричний конструктор)
// Створи клас Logger, який:
// Має приватний конструктор.
// Реалізує патерн Singleton через фабричний конструктор — тобто при створенні завжди повертає один і той самий екземпляр.
// Має метод log(String message), який додає повідомлення у внутрішній список.
// Має метод printLogs(), який виводить усі повідомлення в консоль.

class Logger {
  static Logger? _instance; // Singleton-екземпляр
  final List<String> _logs = []; // Лог-повідомлення

  // приватний конструктор
  Logger._internal();

  // фабричний конструктор
  factory Logger() {
    _instance ??= Logger._internal();
    return _instance!;
  }

  void log(String message) {
    _logs.add('8. $message');
  }

  void printLogs() {
    for (var msg in _logs) {
      print(msg);
    }
  }
}
