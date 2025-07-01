// Init values in init bloc of constructor
import 'dart:math';

void main() {
  // 1
  final circleArea = Circle(12.23);
  print(circleArea);
  // 2
  final studentName = Student(firstName: 'Renat', lastName: 'Bakaiev');
  print(studentName);
  // 3
  final totalSalary = EmployeeSalary(baseSalary: 3000, bonus: 500);
  print(totalSalary);
  // 4
  final figureCharacteristics = Rectangle(width: 34.46, height: 37.22);
  print(figureCharacteristics);
  // 5
  final date = Date(day: 5, month: 5, year: 2025);
  print(date);
}

// Завдання 1 — Circle
// Створи клас Circle з полем:
// double radius
// І поле, яке обчислюється:
// double area — площа круга
// Реалізуй звичайний конструктор, який приймає radius і ініціалізує поле area в ініціалізаційному блоці, використовуючи формулу:
// area=π×radius2
// (Для π використай 3.14159 або dart:math).

class Circle {
  final double radius;
  final double area;

  Circle(this.radius) : this.area = pi * pow(radius, 2);

  @override
  String toString() => '1. Get area of circle with radius: $radius: $area';
}

// Завдання 2 — Student
// Створи клас з такими полями:
// String firstName
// String lastName
// String fullName
// Зроби конструктор, який приймає firstName і lastName, а fullName ініціалізує в ініціалізаційному блоці як:
// fullName = '$firstName $lastName'

class Student {
  final String firstName;
  final String lastName;
  final String fullName;

  Student({required this.firstName, required this.lastName})
    : fullName = '$firstName $lastName';

  @override
  String toString() => '2. Full name of student: $fullName';
}

// Завдання 3 — EmployeeSalary!
// EmployeeSalary з полями:
// double baseSalary
// double bonus
// double totalSalary
// Конструктор приймає baseSalary і bonus, а поле totalSalary ініціалізується в ініціалізаційному блоці як сума цих двох.

class EmployeeSalary {
  final double baseSalary;
  final double bonus;
  final double totalSalary;

  EmployeeSalary({required this.baseSalary, required this.bonus})
    : totalSalary = baseSalary + bonus;

  @override
  String toString() => '3. Total salary of employee is: $totalSalary';
}

// Завдання 4 — Rectangle
// Клас має поля:
// double width
// double height
// double perimeter
// double area
// Конструктор приймає width і height, а в ініціалізаційному блоці має ініціалізувати:
// perimeter = 2 * (width + height)
// area = width * height

class Rectangle {
  final double width;
  final double height;
  final double perimeter;
  final double area;

  Rectangle({required this.width, required this.height})
    : perimeter = 2 * (width + height),
      area = width * height;

  @override
  String toString() => '4. Rectangle perimeter: $perimeter, area: $area';
}

// Завдання 5 — Date
// Поля:
// int day
// int month
// int year
// String formattedDate
// Завдання:
// Створи конструктор, який приймає day, month, year.
// В ініціалізаційному блоці сформуй formattedDate у вигляді:
// 'DD/MM/YYYY'
// Де day і month повинні мати ведучий нуль, якщо менше 10.
// Наприклад: 1 липня 2025 → 01/07/2025

class Date {
  final int day;
  final int month;
  final int year;
  String formattedDate;

  Date({required this.day, required this.month, required this.year})
    : formattedDate =
          '${day < 10 ? '0$day' : day}/${month < 10 ? '0$month' : month}/$year';
  // : formattedDate =
  //       '${day.toString().padLeft(2, '0')}/${month.toString().padLeft(2, '0')}/$year';

  @override
  String toString() => '5. Date: $formattedDate';
}
