import 'dart:math';

// Створення списку (різні способи створення списків)
// Доступ до елементів списку за індексом
// Ітерація по списку (for, for-in, forEach)
// Різниця між growable та fixed-length списками
// Зміна списку (додавання, видалення, вставка, зміна елементів)
// Корисні методи роботи зі списками (isEmpty, isNotEmpty, length, first, last, firstWhere, lastWhere, any, every, contains, reduce, fold)
// Сортування списку

void main() {
  // creatingList();
  // accessingElementsOfList();
  // collectionIteration();
  // differenceBetweenGrowableAndFixedLengthLists();
  // changingList();
  // usefulMethods();
  // sortingList();
}

void creatingList() {
  final list = List.generate(20, (index) => index);
  print(list);

  final list2 = List.filled(20, 0);
  print(list2);

  final list3 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  print(list3);
}

void accessingElementsOfList() {
  final list = List.generate(20, (index) => index);
  print(list[0]);
  print(list[1]);
  print(list[2]);
  print(list[3]);
}

void collectionIteration() {
  final list = List.generate(20, (index) => index);

  for (var i = 0; i < list.length; i++) {
    print(list[i]);
  }

  for (var element in list) {
    print(element);
  }

  list.forEach(print);
}

void differenceBetweenGrowableAndFixedLengthLists() {
  final growableList = List.generate(
    20,
    (index) => index,
  ); // growable = true by default
  print(growableList);

  final fixedLengthList = List.filled(20, 0); // growable = false by default
  print(fixedLengthList);
}

void changingList() {
  final colors = ['red', 'green', 'blue'];

  print('initial colors: $colors');

  colors.add('yellow');

  print('after adding yellow: $colors');

  colors.remove('red');

  print('after removing red: $colors');

  colors.insert(2, 'black');

  print('after inserting black: $colors');

  colors[3] = 'purple';
  print('after changing purple: $colors');

  // colors.removeAt(0);
  // colors.removeLast();
  // colors.removeRange(0, 10);
  // colors.removeWhere((e) => e.contains('gr'));
  // colors.clear();
}

void usefulMethods() {
  final numbers = [];
  print(numbers.isEmpty);

  final colors = ['red', 'green', 'blue'];
  print(colors.isNotEmpty);

  print(colors.length);

  print(colors.first);
  print(colors.last);

  final numbers2 = [1, 2, 3, 4, 5];
  print(numbers2.firstWhere((e) => e % 2 == 0));

  final numbers3 = [1, 2, 3, 4, 5];
  print(numbers3.lastWhere((e) => e % 2 == 0));

  final numbers4 = [1, 2, 3, 4, 5];
  print(numbers4.any((e) => e % 2 == 0));

  final numbers5 = [1, 2, 3, 4, 5];
  print(numbers5.every((e) => e % 2 == 0));

  final numbers6 = [1, 2, 3, 4, 5];
  print(numbers6.contains(3));

  final numbers7 = [1, 2, 3, 4, 5];
  print(numbers7.reduce((previous, current) => previous + current));

  final numbers8 = <int>[1, 2, 3, 4, 5];
  print(numbers8.fold<int>(0, (previous, current) => previous + current));
}

void sortingList() {
  final numbers = List.generate(100, (index) => Random().nextInt(100));
  numbers.sort();
  print(numbers);
}
