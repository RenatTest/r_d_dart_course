void main() async {
  // 1
  String resultName = await fetchName();
  print(resultName);
  // 2
  String resultAge = await fetchAge();
  print(resultAge);
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
