// Оголошення та ініціалізація змінних у Dart

void main() {
  // Явне оголошення типу змінної
  int age = 25;
  String name = 'Anna';
  bool isStudent = true;
  late String studentName = 'Renat';

  print('Age: $age');
  print('Name: $name');
  print('Is Student: $isStudent');
  print('Student name: $studentName');

  // Оголошення змінної через var (тип визначається автоматично)
  var city = 'Kyiv'; // city має тип String
  var temperature = 22.5; // temperature має тип double

  print('City: $city');
  print('Temperature: $temperature');

  // Використання final — значення присвоюється один раз
  final country = 'Ukraine';
  // country = 'Poland'; // Помилка: не можна змінити значення final

  print('Country: $country');

  // Використання const — константа, що встановлюється під час компіляції
  const pi = 3.1415;
  const int daysInWeek = 7;

  print('Pi: $pi');
  print('Days in a week: $daysInWeek');

  // Порівняння var, final і const
  var greeting = 'Hello'; // можна змінити
  final creationDate = DateTime.now(); // одне присвоєння при виконанні
  const appName = 'MyApp'; // незмінна константа

  greeting = 'Hi'; // OK
  // creationDate = DateTime.now(); // Помилка
  // appName = 'NewApp'; // Помилка

  print('Greeting: $greeting');
  print('Creation date: $creationDate');
  print('App name: $appName');

  // https://dartpad.dev/?id=9003a40c6304ea8c3e0d225da6574465
}
