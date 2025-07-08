void main() async {
  // 1
  String resultName = await fetchName();
  print(resultName);
  // 2
  String resultAge = await fetchAge();
  print(resultAge);
  // 3.1
  String functionTime = await getMethodsTime(fetchAge);
  print(functionTime);
  // 3.2
  await getMethodsTime2();
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
    case 2 || 3 || 4:
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
  return 'Час виконання функції, що передана: ${(stopwatch.elapsedMilliseconds / 1000).toStringAsFixed(1)} сек.';
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
