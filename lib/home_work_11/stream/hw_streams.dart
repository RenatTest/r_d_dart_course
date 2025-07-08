import 'dart:async';

void main() async {
  // 6.1
  print('------------------ Task 6.1 --------------------');
  await getNumbersFromStreamFromIterable([1, 2, 3, 4, 5]);
  print('------------------ Task 6.2 --------------------');
  await getNumbersFromStreamListen([4, 3, 2, 1]);
  await createCountDownStream(10, 1);
  print('------------------ Task 8 --------------------');
  createStreamController();
}

// Task 6: Стрім з чисел (fromIterable)

// Створіть Stream<int> з довільних чисел (наприклад, від 1 до 5) за допомогою Stream.fromIterable.
// Виведіть кожне значення з цього стріму, використовуючи конструкцію await for.
// Виведіть кожне значення з цього ж стріму, використовуючи метод listen.

Future<void> getNumbersFromStreamFromIterable(List<int> numbers) async {
  Stream<int> streamNumbers = Stream.fromIterable(numbers);
  await for (var number in streamNumbers) {
    print('number from list with await for: $number');
  }
}

Future<void> getNumbersFromStreamListen(List<int> numbers) async {
  Stream<int> streamNumbers2 = Stream.fromIterable(numbers);
  streamNumbers2
      .listen((number) {
        print('number from list with listen method: $number');
      })
      .onDone(() {
        print('------------------ Task 7 --------------------');
      });
}

// Task 7: Зворотний відлік зі стріму (periodic)

// Створіть Stream<int> за допомогою Stream.periodic, який генерує числа з затримкою в 1 секунду.
// Обмежте відлік до 10 чисел за допомогою методу take.
// Виведіть кожне число у консоль у форматі: "1...", "2...", "3...", ... "10...".

Future<void> createCountDownStream(int number, int sec) async {
  Stream<int> countDownStream = Stream.periodic(
    Duration(seconds: sec),
    (i) => i + 1,
  ).take(number);
  await for (var number in countDownStream) {
    print('Timer: $number ...');
  }
}

// Task 8: Робота з StreamController

// Створіть StreamController<String>.
// Додайте до цього контролера кілька довільних рядкових значень вручну (наприклад, "Hello", "World", "Dart").
// Прослухайте цей стрім (через метод listen) і виведіть всі значення у консоль.
// Закрийте контролер після додавання всіх значень.
// Використайте callback onDone у методі listen, щоб вивести повідомлення "Стрім завершено" після того, як стрім буде закритий.

Future<void> createStreamController() async {
  final controller = StreamController<String>();
  controller.stream
      .listen((word) => print('Value from stream: $word'))
      .onDone(() => print('Стрім завершено'));
  controller.add('Hello');
  controller.add('World');
  controller.add('Dart');
  controller.close();
}
