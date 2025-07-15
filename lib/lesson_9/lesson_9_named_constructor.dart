void main() {
  final person = Person.named('Oleh', 29);
  person.sayHello();
}

class Person {
  // Іменований конструктор

  // Можно також записати ось так
  // Person.named(this.name, this.age)
  Person.named(String name, int age) : this.name = name, this.age = age {
    // do some init job here
    print('👤 Person.named constructor has been called');
  }

  String name;
  int age;

  void sayHello() {
    print('Hi, my name is $name and I am $age years old.');
  }
}
