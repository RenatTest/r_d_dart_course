void main() {
  //   Завдання 4: Тернарний оператор
  // 1) Створіть змінну temperature.
  // 2) Використайте тернарний оператор, щоб визначити:
  // Якщо більше 25 — “Тепло”.
  // Якщо менше або дорівнює 25 — “Прохолодно”.
  // 3) Потім створіть ще один тернарний оператор:
  // Якщо менше 10 — вивести “Дуже холодно”.

  int temperature = 34;
  int normalTemperature = 25;
  int veryColdTemperature = 10;

  // 1
  String weatherCondition = temperature <= normalTemperature
      ? temperature < veryColdTemperature
            ? "very cold"
            : "cold"
      : "warm";

  print('The weather is $weatherCondition');

  // 2
  String weatherCheck = temperature > normalTemperature ? 'warm' : 'cold';
  String weatherCondition2 = temperature < veryColdTemperature
      ? 'very cold'
      : weatherCheck;

  print('The weather is $weatherCondition2');
}
