void main() {
  final person = Person.create('Oleh', 29);
  person.sayHello();
}

class Person {
  Person(String name, int age) : this.name = name, this.age = age {
    print('Simple constructor called');
  }

  factory Person.create(String name, int age) {
    print('Factory constructor called');
    // Do some logic before creation;
    return Person(name, age);
  }

  final String name;
  final int age;

  void sayHello() {
    print('Hi, my name is $name and I am $age years old.');
  }
}
