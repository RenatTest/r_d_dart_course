// Завдання 1:
// Створи клас Person, який має поля name (рядок) та age (ціле число).
// Додай звичайний конструктор, який ініціалізує ці поля.

// Завдання 2:
// Створи клас Rectangle, який має поля width і height (обидва — типу double).
// Додай звичайний конструктор, який ініціалізує поля.
// Додай метод area(), який повертає площу.

// Завдання 3:
// Створи клас Book, який має поля title, author, pages.
// Реалізуй звичайний конструктор.
// Додай метод description(), який повертає рядок у форматі:

void main() {
  final person = Person(name: 'Renat', age: 39);
  print('1. ${person.name}, ${person.age}');
  final areaFigure = Rectangle(20.0, 30.0);
  areaFigure.area();
  final bookInfo = Book(
    'The experience of a fool',
    'Mirzakarim Norbekov',
    1000,
  );
  print(bookInfo.description());
}

class Person {
  final String name;
  final int age;

  Person({required this.name, required this.age});
}

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

class Book {
  final String title;
  final String author;
  final int pages;

  Book(this.title, this.author, this.pages);

  String description() => '3. $title by $author, $pages pages';
}
