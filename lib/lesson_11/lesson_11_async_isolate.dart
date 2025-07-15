import 'dart:isolate';

void main() async {
  // Create isolate
  final result = Isolate.run(() => hardWork());
  print(result);
}

Future<String> hardWork() async {
  print('Зробили запит');
  await Future.delayed(const Duration(seconds: 2));
  print('Отримали відповідь');

  for (var i = 0; i < 200; i++) {
    print(i);
  }

  return 'List iterated';
}
