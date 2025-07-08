void main() async {
  // 1
  print('------------------ Task 1 --------------------');
  String resultName = await fetchName();
  print(resultName);
  // 2
  print('------------------ Task 2 --------------------');
  String resultAge = await fetchAge();
  print(resultAge);
  // 3.1
  print('------------------ Task 3 --------------------');
  String functionTime = await getMethodsTime(fetchAge);
  print(functionTime);
  // 3.2
  await getMethodsTime2();
  // 4
  print('------------------ Task 4 --------------------');
  await getFutures();
  // 5
  print('------------------ Task 5 --------------------');
  String timer = await delayedCountdown(5);
  print(timer);
}

// Task 1: Асинхронне отримання імені

// Створіть метод Future<String> fetchName(), який імітує асинхронну операцію.
// Цей метод повинен повертати ваше ім'я через 2 секунди (використайте Future.delayed та async/await).
// Виведіть результат у консоль у форматі: "Мене звати [результат виконання асинхронної операції]".

Future<String> fetchName() async {
  String name = 'Renat';
  await Future.delayed(Duration(seconds: 2));
  return 'Мене звати $name';
}

// Task 2: Асинхронне отримання віку

// Створіть метод Future<String> fetchAge(), який імітує асинхронну операцію.
// Цей метод повинен повертати рядок "25" через 1500 мілісекунд.
// Виведіть результат у консоль у форматі: "Мені [ваш вік] років".
// Реалізуйте логіку, щоб слово "рік" змінювалося відповідно до значення віку (наприклад: 21 рік, 22 роки, 25 років).

Future<String> fetchAge() async {
  int age = 39;
  await Future.delayed(Duration(milliseconds: 1500));
  int value = age % 10;
  int twoValues = age % 100;

  if (twoValues >= 11 && twoValues <= 14) {
    return 'Мені $age років';
  }

  switch (value) {
    case 1:
      return 'Мені $age рік';
    case 2:
    case 3:
    case 4:
      return 'Мені $age роки';
    default:
      return 'Мені $age років';
  }
}

// Task 3: Послідовне виконання Future

// Виконайте методи fetchName() та fetchAge() послідовно.
// Виміряйте та виведіть час виконання обох методів.
// Порада. Можете використати для виконання другого пункту клас https://api.flutter.dev/flutter/dart-core/Stopwatch-class.html

Future<String> getMethodsTime(Function func) async {
  final stopwatch = Stopwatch();
  stopwatch.start();
  await func();
  stopwatch.stop();
  return 'Час виконання функції: ${(stopwatch.elapsedMilliseconds / 1000).toStringAsFixed(1)} сек.';
}

Future<void> getMethodsTime2() async {
  final stopwatch = Stopwatch();
  stopwatch.start();
  await fetchName();
  stopwatch.stop();
  print(
    'Час виконання функції fetchName: ${(stopwatch.elapsedMilliseconds / 1000).toStringAsFixed(1)} сек.',
  );

  final stopwatch2 = Stopwatch();
  stopwatch2.start();
  await fetchAge();
  stopwatch2.stop();
  print(
    'Час виконання функції fetchAge: ${(stopwatch2.elapsedMilliseconds / 1000).toStringAsFixed(1)} сек.',
  );
}

// Task 4: Паралельне виконання Future (Future.wait)

// Виконайте методи fetchName() та fetchAge() паралельно за допомогою Future.wait.
// Виміряйте та виведіть час виконання.

Future<void> getFutures() async {
  var futures = await Future.wait([
    fetchName(),
    fetchAge(),
    getMethodsTime(fetchName),
    getMethodsTime(fetchAge),
  ]);
  print(futures.join('\n'));
}

// Task 5: Зворотний відлік з затримкою

// Напишіть функцію Future<String> delayedCountdown(int seconds), яка приймає кількість секунд.
// Ця функція повинна щосекунди виводити у консоль відлік (наприклад: "3...", "2...", "1...").
// В кінці відліку метод має повертати рядок "Старт!".

Future<String> delayedCountdown(int seconds) async {
  for (var i = seconds; i > 0; i--) {
    print('$i...');
    await Future.delayed(Duration(seconds: 1));
  }
  return 'Старт!';
}
