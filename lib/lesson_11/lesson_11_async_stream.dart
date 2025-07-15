import 'dart:async';
import 'dart:io';

void main() async {
  print('🔹 Stream.fromIterable');
  final iterableStream = Stream.fromIterable([1, 2, 3]);
  await for (var value in iterableStream) {
    print('fromIterable: $value');
  }

  const fullString = 'Hello! My name is Renat';
  final List<String> list = fullString.split('');
  final iterableStreamList = Stream.fromIterable(list);
  await for (var value in iterableStreamList) {
    stdout.write(value);
    await Future.delayed(Duration(milliseconds: 100));
  }

  print('\n🔹 Stream.periodic');
  final periodicStream = Stream.periodic(
    Duration(milliseconds: 500),
    (i) => i,
  ).take(3); // take - stop stream when value > 3
  await for (var value in periodicStream) {
    print('periodic: $value');
  }

  print('\n🔹 StreamController');
  final controller = StreamController<int>();
  controller.stream.listen((value) => print('controller: $value'));
  controller.add(10);
  controller.add(20);
  await Future.delayed(Duration(milliseconds: 500));
  await controller.close();

  print('\n🔹 async* generator');
  await for (var value in generateStream()) {
    print('async*: $value');
  }

  print('\n✅ Готово!');
}

Stream<int> generateStream() async* {
  // Функція генератор, що повертає нам stream
  for (int i = 0; i < 8; i++) {
    await Future.delayed(Duration(milliseconds: 400));
    yield i; // відправлення events
  }
}
