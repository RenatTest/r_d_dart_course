// Named constructor
void main() {
  // 1
  final user = User.admin();
  print('1. User name: ${user.name}, admin: ${user.isAdmin}');

  // 2
  final temperature = Temperature.fromFahrenheit(
    200,
  ); // 2.1-st variant to display
  print(temperature); // 2.2-nd variant to display

  // 3
  final p1 = Point(10, 20);
  final p2 = Point.origin();
  print('3. Created point: ${p1.x}, ${p1.y}');
  print('3. Created point in the center ${p2.x}, ${p2.y}');

  // 4
  final color = Color(123, 323, 232);
  print(color);
  final colorBlack = Color.black();
  print(colorBlack);
  final colorWhite = Color.white();
  print(colorWhite);

  final employee = Employee('Bob', 'Flutter dev', 3000);
  print(employee);
  final employeeIntern = Employee.intern('Max');
  print(employeeIntern);
}

// Завдання 1:
// Створи клас User з полями name і isAdmin.
// Додай:
// звичайний конструктор
// іменований конструктор User.admin(), який створює користувача з ім’ям 'Admin' і isAdmin = true

class User {
  final String name;
  final bool isAdmin;

  User(this.name, this.isAdmin);

  User.admin() : name = 'Renat', isAdmin = true {
    print(
      '1. Named constructor was created with name: $name, is admin: $isAdmin',
    );
  }
}

// Завдання 2: Temperature
// Створи клас Temperature, який має одне поле:
// double celsius;
// Реалізуй:
// звичайний конструктор, який приймає значення в градусах Цельсія;
// іменований конструктор Temperature.fromFahrenheit(double f),
// який конвертує Фаренгейти у Цельсій за формулою:
// C = (F - 32) * 5 / 9

class Temperature {
  final double celsius;

  Temperature(this.celsius);

  Temperature.fromFahrenheit(double f) : this.celsius = (f - 32) * 5 / 9 {
    print('2. Temperature converted from Fahrenheit: $f to Celsius: $celsius');
  }

  @override
  String toString() =>
      '2. Temperature converted from Fahrenheit to Celsius: $celsius';
}

// Завдання 3: Point.origin()
// Створи клас Point з полями:
// double x;
// double y;
// І додай:
// Звичайний конструктор, який приймає x і y.
// Іменований конструктор Point.origin(), який створює точку в центрі координат: x = 0, y = 0.

class Point {
  final double x;
  final double y;

  Point(this.x, this.y);

  Point.origin() : x = 0, y = 0 {
    print('3. Created point in the center x: $x, y: $y');
  }
}

// Завдання 4 — Color
// Створи клас Color з полями:
// int red
// int green
// int blue
// Зроби:
// Звичайний конструктор, який приймає значення red, green, blue.
// Іменований конструктор Color.black(), який створює чорний колір (всі 0).
// Іменований конструктор Color.white(), який створює білий колір (всі 255).

class Color {
  final int red;
  final int green;
  final int blue;

  Color(this.red, this.green, this.blue);

  Color.black() : red = 0, green = 0, blue = 0;
  Color.white() : red = 255, green = 255, blue = 255;

  @override
  String toString() => '4. Color RGB is: $red, $green, $blue';
}

// Завдання 5 — Employee
// Створи клас Employee з полями:
// String name
// String position
// double salary
// Зроби:
// Звичайний конструктор, що приймає всі поля.
// Іменований конструктор Employee.intern(), який приймає тільки name і встановлює position як "Intern", а salary як 0.

class Employee {
  final String name;
  final String position;
  final double salary;

  Employee(this.name, this.position, this.salary);

  Employee.intern(String name) : name = name, position = 'Intern', salary = 500;

  @override
  String toString() =>
      '5. Employee name: $name, position: $position, salary: $salary';
}
