void main() async {
  // 6.1
  print('------------------ Task 6.1 --------------------');
  await getNumbersFromStreamFromIterable([1, 2, 3, 4, 5]);
  print('------------------ Task 6.2 --------------------');
  await getNumbersFromStreamListen([4, 3, 2, 1]);
}

// Task 6: Стрім з чисел (fromIterable)

// Створіть Stream<int> з довільних чисел (наприклад, від 1 до 5) за допомогою Stream.fromIterable.
// Виведіть кожне значення з цього стріму, використовуючи конструкцію await for.
// Виведіть кожне значення з цього ж стріму, використовуючи метод listen.

Future<void> getNumbersFromStreamFromIterable(List<int> numbers) async {
  Stream<int> streamNumbers = Stream.fromIterable(numbers);
  await for (var number in streamNumbers) {
    print('number from list with Stream.fromIterable: $number');
  }
}

Future<void> getNumbersFromStreamListen(List<int> numbers) async {
  Stream<int> streamNumbers = Stream.fromIterable(numbers);
  streamNumbers.listen((number) {
    print('number from list with Stream listen method: $number');
  });
}
