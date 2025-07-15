// FUTURE
void main() async {
  final dataFromServer = await getUserNameFromServer();
  print(dataFromServer);
  final result = hardWork();
  print(result);
}

Future<String> getUserNameFromServer() async {
  // 1
  // final result = await Future.delayed(
  //   Duration(seconds: 2),
  //   () => 'Renat Bakaiev',
  // );
  // 2 USE THEN - when send something to server and dont want to wait
  final result = await Future.delayed(
    Duration(seconds: 2),
  ).then((value) => 'Renat Bakaiev');
  return result;
}

// Why doesn't the UI freeze?
Future<String> hardWork() async {
  for (var i = 0; i < 300; i++) {
    await Future.delayed(Duration.zero);
    print(i);
  }
  return 'For done';
}

// 🔍 Що робить Future.delayed(Duration.zero)?
// Це створює мікрозадачу (microtask), яка планується на виконання після поточного циклу подій.
// Вона фактично передає управління назад до event loop, дозволяючи UI оновлюватися та обробляти інші події.
// Отже, завдяки await Future.delayed(Duration.zero) кожна ітерація циклу виконується не поспіль, а через await, що:
// віддає керування назад в event loop;
// дозволяє UI залишатися реактивним і "живим";
// не блокує головний потік (main/UI thread).

// Microtask

// void main() async {
//   print('A');
//   await Future(() {
//     print('B');
//     Future(() => print('C'));
//     Future.microtask(() => print('D'));
//     Future(() => print('E'));
//     print('F');
//   });
//   print('G');
// }

// 🔍 Детальний розбір:
// 📌 Основне правило:
// Future() → подія (event queue)
// Future.microtask() → мікрозадача (microtask queue)
// await не чекає мікрозадач, створених після запуску тіла Future.

// 🧾 Поетапно:
// print('A') → A
// await Future(() { ... }) запускає тіло синхронно:
// print('B') → B
// Future(() => print('C')) → event queue
// Future.microtask(() => print('D')) → microtask queue
// Future(() => print('E')) → event queue
// print('F') → F
// Тіло Future завершилось → await продовжується → print('G') → G
// Потім виконується microtask → D
// Потім event queue:
// print('C') → C
// print('E') → E

// 🔁 Підсумок:
// A    // Синхронний код
// B    // Синхронний код у Future
// F    // Синхронний код у Future
// G    // Після завершення Future
// D    // Microtask
// C    // Event (Future)
// E    // Event (Future)
