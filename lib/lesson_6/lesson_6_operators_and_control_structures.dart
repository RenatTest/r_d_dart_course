// ignore_for_file: dead_code

void main() {
  // Математичні оператори
  // mathOperatorsExample();

  // Оператори порівняння
  // comparisonOperatorsExample();

  // Логічні оператори
  // logicalOperatorsExample();

  // Тернарний оператор
  // ternaryOperatorExample();

  // Оператори присвоєння
  // assignmentOperatorsExample();

  // Умовні конструкції if-else
  // ifElseExample();

  // Конструкція switchStatement
  // switchStatementExample();

  // Конструкція switchExpression
  // switchExpressionExample();

  // Цикли for, while, do-while, for-in
  // forLoopExample();
  // whileLoopExample();
  // doWhileLoopExample();
  // forInExample();

  // Break, continue, return
  breakContinueReturnExample();
}

// 📍 Математичні оператори
void mathOperatorsExample() {
  int a = 25;
  double b = 5.3;
  print('Додавання: ${a + b}');
  print('Віднімання: ${a - b}');
  print('Множення: ${a * b}');
  print('Ділення: ${a / b}');
  print('Цілочисельне ділення: ${a ~/ b}');
  print('Залишок від ділення: ${a % b}');

  print('');
  print('Оруглення математичне: ${b.round()}');
  print('Оруглення вгору: ${b.ceil()}');
  print('Оруглення вниз: ${b.floor()}');
  print('Зручний вивід в консоль: ${b.toStringAsFixed(2)}');
}

// 📍 Оператори порівняння
void comparisonOperatorsExample() {
  int a = 88;
  int b = 33;
  print('a == b: ${a == b}');
  print('a != b: ${a != b}');
  print('a > b: ${a > b}');
  print('a < b: ${a < b}');
  print('a >= b: ${a >= b}');
  print('a <= b: ${a <= b}');
}

// 📍 Логічні оператори
void logicalOperatorsExample() {
  bool hasMembership = true;
  bool hasGuestPass = false;
  bool gymIsOpen = true;

  bool canEnterGym = (hasMembership || hasGuestPass) && gymIsOpen;
  bool needsToBuyMembership = !hasMembership && !hasGuestPass;
  bool cannotVisitGym = !gymIsOpen;

  print('Чи можу я зайти у спортзал? $canEnterGym');
  print('Чи потрібно купити абонемент? $needsToBuyMembership');
  print('Чи спортзал закритий? $cannotVisitGym');
}

// 📍 Тернарний оператор
void ternaryOperatorExample() {
  bool isWeekend = true;

  // Звичайний if-else
  String activity;
  if (isWeekend) {
    activity = 'Відпочиваю';
  } else {
    activity = 'Працюю';
  }
  print('Що я роблю сьогодні (if-else)? $activity');

  // Тернарний оператор
  String activityTernary = isWeekend ? 'Відпочиваю' : 'Працюю';
  print('Що я роблю сьогодні (тернарний оператор)? $activityTernary');
}

// 📍 Оператори присвоєння
void assignmentOperatorsExample() {
  int number = 12;

  number += 5;
  print('Після додавання: $number');

  number -= 3;
  print('Після віднімання: $number');

  number *= 2;
  print('Після множення: $number');

  number ~/=
      5; // 12/5=2, залишок 2 // Ділення, повернення цілочисельного результату
  print('Після цілочисельного ділення: $number');

  number %= 7; // Отримати остачу від цілочисельного ділення (за модулем)
  print('Після знаходження залишку: $number');
}

// 📍 Умовні конструкції if-else
void ifElseExample() {
  int age = 18;

  if (age >= 18) {
    print('Повнолітній');
  } else {
    print('Неповнолітній');
  }
}

// 📍 Конструкція switch Statement
void switchStatementExample() {
  String day = 'середа';

  switch (day) {
    case 'понеділок':
      print('Початок тижня');
    case 'пʼятниця':
      print('Кінець робочого тижня');
    case 'субота':
    case 'неділя':
      print('Вихідний');
    default:
      print('Звичайний робочий день');
  }
}

// 📍 Конструкція switch expression (new come with Dart3+)
void switchExpressionExample() {
  String day = 'понеділок';

  final willGoToWork = switch (day) {
    'субота' || 'неділя' => false,
    _ => true,
  };

  if (willGoToWork) {
    print('Сьогодні піду на роботу');
  } else {
    print('Сьогодні не піду на роботу');
  }
}

// 📍 Цикл for
void forLoopExample() {
  for (int i = 0; i < 5; i++) {
    print('Індекс: $i');
  }
}

// 📍 Цикл while
void whileLoopExample() {
  int counter = 0;
  while (counter < 3) {
    print('Лічильник: $counter');
    counter++;
  }
}

// 📍 Цикл do-while
void doWhileLoopExample() {
  int number = 5;
  do {
    print('Число: $number');
    number--;
  } while (number > 0);
}

// Цикл for-in
void forInExample() {
  List<int> nums = [1, 2, 33, 43, 88];

  for (var item in nums) {
    print(item);
  }
}

// 📍 Break, continue, return
void breakContinueReturnExample() {
  for (int i = 0; i < 5; i++) {
    if (i == 2) {
      continue;
    }
    if (i == 4) {
      print('Досягнуто межі, вихід за допомогою "break".');
      break;
    }
    print('Поточне значення: $i');
  }

  print('Завершення функції за допомогою "return".');
  return;
}
