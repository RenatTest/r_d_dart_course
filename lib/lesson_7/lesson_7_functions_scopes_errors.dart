void main() {
  // getUserName('Renat Bakaiev');
  getData1('Renat', 39);
  getData2(name: 'Rehina', age: 7);
  getData3('Renata', 10);
  getData4('Vita', 39);
}

// String getUserName(String name) { // function
//   print(name);
//   return name;
// }

String getUserName(String name) => name; // arrow function

// Parameters

// 1. Required positional parameters
void getData1(name, age) {
  print('User name - $name, user age - $age');
}

// 2. Named parameters (required when added word "required")
void getData2({required name, age}) {
  print('User name - $name, user age - $age');
}

// 3. Optional positional parameters
void getData3(String name, int age, [String? hobby]) {
  if (hobby == null) {
    print('User name - $name, user age - $age');
  } else {
    print('User name - $name, user age - $age, hobby - $hobby');
  }
}

// 4. Make parameters by default with =
void getData4(name, age, [hobby = 'shopping']) {
  print('User name - $name, user age - $age, hobby - $hobby');
}

// Scopes
// _ - змінні і фінкції приватні і доступні тільки для конкретного файлу.

// FROM PAVLO -----------------------------------------------------------------

// 1. Позиційні обовʼязкові параметри
// 2. Іменовані обовʼязкові параметри
// 3. Позиційні не обовʼязкові параметри
// 4. Іменовані не обовʼязкові параметри
// 5. Обовʼязкові та не обовʼязкові разом.
// 6. Значення по дефолту
// 7. Коли що використовувати

// void main() {
//   print('🔹 Позиційні обовʼязкові параметри');
//   greetPositional('Pavlo', 'ранку');

//   print('\n🔹 Позиційні обовʼязкові та опціональні параметри');
//   greetPositionalOptional('Pavlo', 'ранку');

//   print('\n🔸 Іменовані параметри');
//   greetNamed(name: 'Olena', timeOfDay: 'дня');

//   print('\n🔸 Іменовані параметри');
//   greetNamed(name: 'Olena', timeOfDay: 'дня');
// }

// /// Функція з обовʼязковими позиційними параметрами
// void greetPositional(String name, String timeOfDay) {
//   print('Доброго $timeOfDay, $name!');
// }

// /// Функція з позиційними опціональними параметрами
// void greetPositionalOptional([String? name, String? timeOfDay]) {
//   print('Доброго $timeOfDay, $name!');
// }

// /// Функція з обовʼязковими іменованими параметрами
// void greetNamed({required String name, required String timeOfDay}) {
//   print('Доброго $timeOfDay, $name!');
// }

// /// Функція з опціональними іменованими параметрами
// void greetNamedOptional({String? name, String? timeOfDay}) {
//   print('Доброго $timeOfDay, $name!');
// }

// SCOPES -----------------------------------------------------------------

// 🌍 Глобальна змінна
// int globalCounter = 0;

// void main() {
//   print('🔹 Глобальна змінна:');
//   print('Початкове значення: $globalCounter');
//   incrementGlobal();
//   print('Після збільшення: $globalCounter');

//   print('\n🔸 Локальна змінна:');
//   showLocalVariable();
//   // print(localCounter); // ❌ Error: localCounter is not visible here
// }

// /// Збільшує глобальну змінну
// void incrementGlobal() {
//   globalCounter++;
// }

// /// Створює локальну змінну
// void showLocalVariable() {
//   int localCounter = 10;
//   print('Локальна змінна всередині функції: $localCounter');
// }

// https://dartpad.dev/?id=bc0aef9a5d0aa7e8ff3ef5df69ffa239
