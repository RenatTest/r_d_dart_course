void main() async {
  // 1
  String result = await fetchName();
  print(result);
}

// Task 1: Асинхронне отримання імені

// Створіть метод Future<String> fetchName(), який імітує асинхронну операцію.
// Цей метод повинен повертати ваше ім'я через 2 секунди (використайте Future.delayed та async/await).
// Виведіть результат у консоль у форматі: "Мене звати [результат виконання асинхронної операції]".

Future<String> fetchName() async {
  String name = 'Renat';
  await Future.delayed(Duration(seconds: 2));
  return 'My name is $name';
}
