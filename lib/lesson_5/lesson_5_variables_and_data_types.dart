// Основні типи даних у Dart
// Приклади оголошення змінних усіх базових типів

void main() {
  // int — цілі числа
  int age = 30;
  print('int: $age');

  // double — числа з плаваючою комою
  double height = 1.85;
  print('double: $height');

  // String — текстові рядки
  String name = 'John Doe';
  print('String: $name');

  // bool — логічні значення
  bool isActive = true;
  print('bool: $isActive');

  // List — список елементів (може містити дублікати)
  List<String> colors = ['red', 'green', 'blue'];
  print('List: $colors');

  // Set — множина унікальних елементів (дублікати автоматично видаляються)
  Set<int> uniqueNumbers = {1, 2, 3, 2, 1};
  print('Set: $uniqueNumbers');

  // Map — колекція пар "ключ-значення"
  Map<String, int> productPrices = {'apple': 3, 'banana': 2, 'orange': 4};
  print('Map: $productPrices');

  // dynamic — змінна, яка може змінювати свій тип під час виконання
  dynamic anything = 'I am a String';
  print('dynamic: $anything');
  anything = 123; // тепер int
  print('dynamic changed: $anything');

  // var — автоматичне визначення типу змінної за початковим значенням
  var country = 'Ukraine'; // Dart сам визначить, що це String
  print('var: $country');
}
