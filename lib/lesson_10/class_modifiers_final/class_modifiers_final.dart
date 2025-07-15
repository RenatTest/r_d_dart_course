// Class modifiers final

// 🔎 Що таке final class?
// final class — це клас, який не можна наслідувати зовні бібліотеки (позабібліотечно).
// Усередині тієї ж бібліотеки (package, library) можна успадковувати.
// Зовні — ні, це захищає від небажаного розширення.

// 🔥 Навіщо?
// Щоб заборонити розширення класу в зовнішньому коді, але при цьому залишити свободу в межах самої бібліотеки.
// Це більш гнучкий контроль, ніж sealed або base.
// Дуже корисно для API, які хочеш зробити розширюваними, але контрольованими.

// ✅ Що дозволено:

// | Операція           | Усередині бібліотеки | Зовні бібліотеки |
// | ------------------ | -------------------- | ---------------- |
// | `extends`          | ✅                    | ❌                |
// | `implements`       | ✅                    | ✅                |
// | `mixin on`         | ✅                    | ✅                |
// | Створення інстансу | ✅                    | ✅                |

// 📌 Приклад:

import 'package:flutter/material.dart';

final class InternalWidget {
  void show() => print('Показати віджет');
}

// Усередині бібліотеки:
// ❗ Коли ти успадковуєш final-клас — навіть усередині бібліотеки —
// твій підклас також має бути позначений як final, base або sealed.
// 📌 Чому так?
// Це обмеження забезпечує контроль і передбачуваність наслідування.
// Якщо клас InternalWidget — final, Dart не дозволяє створити від нього відкритий для розширення клас.
// Тому Dart вимагає, щоб усі підкласи такого класу також мали явний модифікатор — щоб система типів залишалась контрольованою.
final class CustomWidget extends InternalWidget {}

// Позабібліотечно:
final class OtherWidget extends InternalWidget {} // ❌ Помилка компіляції

// 🧠 Особливості та підводні камені:
// final не забороняє реалізацію через implements.
// Клас може бути успадкований тільки в межах бібліотеки,
// тому важливо розуміти, де починається/закінчується бібліотека.
// Це новий рівень контролю доступу для Dart-пакетів.

// 🧰 Використання у Flutter:
final class InternalButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;

  const InternalButton({
    required this.label,
    required this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onPressed, child: Text(label));
  }
}

// ✅ Усередині бібліотеки — дозволено:

base class RoundedButton extends InternalButton {
  const RoundedButton({
    required super.label,
    required super.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(shape: StadiumBorder()),
      child: Text(label),
    );
  }
}

// 🔐 Навіщо це потрібно у Flutter
// Коли ти створюєш власну UI-бібліотеку або дизайн-систему, ти хочеш:
// надати компоненти (final class InternalButton);
// дозволити своїм розробникам кастомізувати їх усередині бібліотеки (RoundedButton);
// але не дозволяти стороннім розширювати внутрішню логіку, щоб не ламали поведінку чи стилі.
