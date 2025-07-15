// Створення множини (різні способи створення множин)
// Особливості множин (унікальність елементів, відсутність індексів)
// Ітерація по множині (for, for-in, forEach)
// Різниця між HashSet та LinkedHashSet
// Зміна множини (додавання, видалення елементів)
// Корисні методи роботи з множинами (isEmpty, isNotEmpty, length, first, last, firstWhere, lastWhere, any, every, contains, reduce, fold)
// Операції з множинами (об'єднання, перетин, різниця, симетрична різниця)

// ignore_for_file: equal_elements_in_set

import 'dart:math';

void main() {
  // creatingSet();
  // setCharacteristics();
  // collectionIteration();
  // changingSet();
  // usefulMethods();
  diffsAndSimilarity();
}

void creatingSet() {
  // Створення множини з явно вказаними елементами
  final set1 = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
  print(set1);

  // Створення множини з дублікатами (вони будуть автоматично видалені)
  final set2 = {1, 2, 2, 3, 3, 3, 4, 4, 4, 4};
  print(set2);

  final list = List.generate(20, (index) {
    return Random().nextInt(index + 1);
  });
  print(list);
  print('--------');

  final set3 = Set.from(list); //or toSet
  print(set3);
}

void setCharacteristics() {
  final numbers = {1, 2, 3, 4, 5};

  //    !!!!!!!
  // print(numbers[0]);

  // Замість цього можна використовувати first, last або ітерацію
  print('First element: ${numbers.firstOrNull}');
  print('Last element: ${numbers.lastOrNull}');

  // Перевірка чи містить множина елемент
  print('Contains 3: ${numbers.contains(3)}');
  print('Contains 10: ${numbers.contains(10)}');
}

void collectionIteration() {
  final numbers = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};

  // Цикл for-in для ітерації по елементам
  for (var element in numbers) {
    print(element);
  }

  // Метод forEach для ітерації по елементам
  numbers.forEach(print);

  // Можна також використовувати where для фільтрації
  print('Even numbers:');
  numbers.where((e) => e % 2 == 0).forEach(print);

  // створення ногої множини, перебираючи іншу
  final newSet = numbers.map((element) => element += element);
  print(newSet);
}

void changingSet() {
  final colors = {'red', 'green', 'blue'};

  print('Initial colors: $colors');

  // Додавання елемента
  colors.add('yellow');
  print('After adding yellow: $colors');

  // Додавання елемента, який вже існує (нічого не зміниться)
  colors.add('red');
  print('After adding red (already exists): $colors');

  // Видалення елемента
  colors.remove('red');
  print('After removing red: $colors');

  // Видалення неіснуючого елемента (нічого не зміниться)
  colors.remove('purple');
  print('After removing purple (does not exist): $colors');

  // Додавання кількох елементів
  colors.addAll({'purple', 'orange', 'pink'});
  print('After adding multiple colors: $colors');

  // Видалення елементів за умовою
  colors.removeWhere((color) => color.length > 5);
  print('After removing colors with length > 5: $colors');

  // Очищення множини
  // colors.clear();
  // print('After clearing: $colors');
}

void usefulMethods() {
  final emptySet = <int>{};
  print('Empty set is empty: ${emptySet.isEmpty}');

  final numbers = {1, 2, 3, 4, 5};
  print('Numbers set is not empty: ${numbers.isNotEmpty}');

  print('Length of numbers set: ${numbers.length}');

  print('First element: ${numbers.first}');
  print('Last element: ${numbers.last}');

  // Знаходження першого елемента, що відповідає умові
  print('First even number: ${numbers.firstWhere((e) => e % 2 == 0)}');

  // Знаходження останнього елемента, що відповідає умові
  print('Last even number: ${numbers.lastWhere((e) => e % 2 == 0)}');

  // Перевірка чи хоча б один елемент відповідає умові
  print('Any even number: ${numbers.any((e) => e % 2 == 0)}');

  // Перевірка чи всі елементи відповідають умові
  print('All even numbers: ${numbers.every((e) => e % 2 == 0)}');

  // Перевірка чи містить множина елемент
  print('Contains 3: ${numbers.contains(3)}');

  // Зведення множини до одного значення (сума всіх елементів)
  print(
    'Sum of all numbers: ${numbers.reduce((previous, current) => previous + current)}',
  );

  // Зведення множини до одного значення з початковим значенням
  print(
    'Sum with initial value: ${numbers.fold<int>(0, (previous, current) => previous + current)}',
  );
}

void diffsAndSimilarity() {
  final setA = {1, 2, 3, 4, 5};
  final setB = {4, 5, 6, 7, 8};

  print('Set A: $setA');
  print('Set B: $setB');

  // Об'єднання множин (union)
  final union = setA.union(setB);
  print('Union (A ∪ B): $union');
  final union2 = {...setA, ...setB};
  print('Union2 (A ∪ B): $union2');

  // Перетин множин (intersection)
  final intersection = setA.intersection(setB); // Що є спільного в setA та setB
  print('Intersection (A ∩ B): $intersection');

  // Різниця множин (difference)
  final difference = setA.difference(setB); // Що є в setA, чого немає в setB
  print('Difference (A - B): $difference');

  // Функція для створення симетричної різниці - що є в set1, чого немає в set2 + що є в set2, чого немає в set1
  Set<T> symmetricDifference<T>(Set<T> a, Set<T> b) =>
      a.difference(b).union(b.difference(a));
  // {...a.difference(b), ...b.difference(a)};

  final set1 = {1, 2, 3, 4, 5};
  final set2 = {4, 5, 6, 7, 8};

  final result = symmetricDifference(set1, set2); // {1, 2, 3, 6, 7, 8}
  print(result);
  final diff = set1.symmetricDifference(set2);
  print(diff); // => // {1, 2, 3, 6, 7, 8} - за допомогою extension
}

extension SetExtension<T> on Set<T> {
  Set<T> symmetricDifference(Set<T> other) =>
      difference(other).union(other.difference(this));
  //Set<T> symmetricDifference(Set<T> other) => {...difference(other), ...other.difference(this)};
}
