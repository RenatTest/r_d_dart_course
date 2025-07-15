// Повна версія
void main() {}

class HeroFull {
  HeroFull({
    required String name,
    required String gender,
    required String skinColor,
    required double height,
    required String weapon,
  }) : name = name,
       gender = gender,
       skinColor = skinColor,
       height = height,
       weapon = weapon {
    // Дія в тілі конструктора
    // Можемо щось додатково зробити після створення обʼєкту
  }

  String name;
  String gender;
  String skinColor;
  double height;
  String weapon;

  void run() {
    print('$name is running!');
  }
}

//Спрощена версія
class HeroSugar {
  HeroSugar({
    required this.name,
    required this.gender,
    required this.skinColor,
    required this.height,
    required this.weapon,
  }) {
    // Дія в тілі конструктора
    // Можемо щось додатково зробити після створення обʼєкту
  }

  String name;
  String gender;
  String skinColor;
  double height;
  String weapon;

  void run() {
    // some logic
    print('$name is running!');
  }
}
