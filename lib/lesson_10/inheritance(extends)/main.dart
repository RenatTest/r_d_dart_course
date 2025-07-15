// Inheritance(extends)

void main() {
  final doctor = Doctor(name: 'Poli', age: 33, height: 190, help: 'fix humans');
  final it = IT(name: 'Reni', age: 23, height: 176, create: 'sites');
  final builder = Builder(name: 'Sten', age: 54, height: 172, build: 'house');

  print(doctor);
  print(it);
  print(builder);
  print('------------------');
  doctor.fixPeople();
  it.makeCode();
  builder.buildHouse();
}

class Human {
  Human({required this.name, required this.age, required this.height});
  final String name;
  int age;
  double height;
}

class Doctor extends Human {
  Doctor({
    required super.name, // наслідуємо від класу Human
    required super.age, // наслідуємо від класу Human
    required super.height, // наслідуємо від класу Human
    required this.help, // поле цього класу
  });

  void fixPeople() {
    // метод цього класу
    print('The doctor fixes people');
  }

  String help;

  @override
  String toString() {
    return 'Doctor - name: $name, Age: $age, Height: $height, help: $help';
  }
}

class IT extends Human {
  IT({
    required super.name,
    required super.age,
    required super.height,
    required this.create,
  });

  void makeCode() {
    print('The IT makes code');
  }

  String create;

  @override
  String toString() {
    return 'IT - name: $name, Age: $age, Height: $height, create: $create';
  }
}

class Builder extends Human {
  Builder({
    required super.name,
    required super.age,
    required super.height,
    required this.build,
  });

  void buildHouse() {
    print('The builder builds house');
  }

  String build;

  @override
  String toString() {
    return 'Builder - name: $name, Age: $age, Height: $height, build: $build';
  }
}
