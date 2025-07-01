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
