// Class modifiers sealed

// 🔎 Що таке sealed class?
// sealed class — це клас, який можна наслідувати/реалізовувати
// тільки в межах тієї ж бібліотеки.
// 🔐 Всі підкласи та реалізації мають бути в тій самій бібліотеці,
// тобто не можна розширити або імплементувати sealed клас поза межами пакета або library.

// 🧠 Навіщо?
// Для обмеження розширення (але не створення інстансів).
// Щоб створити замкнутий набір варіантів, наприклад: типи станів у BLoC або подій.
// Дуже схоже на sealed у Kotlin або enum-подібні класи.

// ✅ Що дозволено:

// | Операція           | Усередині бібліотеки | Зовні бібліотеки |
// | ------------------ | -------------------- | ---------------- |
// | `extends`          | ✅                    | ❌                |
// | `implements`       | ✅                    | ❌                |
// | `mixin on`         | ✅                    | ❌                |
// | Створення інстансу | ✅ (якщо не abstract) | ✅                |

// ⚠️ Але часто sealed поєднується з abstract, тому інстанси зазвичай не створюються.

// 📌 Приклад: модель станів

import 'package:flutter/material.dart';

sealed class AuthState {}

final class AuthInitial extends AuthState {}

final class AuthLoading extends AuthState {}

final class Authenticated extends AuthState {
  final String userId;
  Authenticated(this.userId);
}

final class Unauthenticated extends AuthState {}

// 🧰 Використання у Flutter (типовий кейс):

Widget buildAuth(AuthState state) {
  return switch (state) {
    AuthInitial() => const CircularProgressIndicator(),
    AuthLoading() => const CircularProgressIndicator(),
    Authenticated(:final userId) => Text('Ласкаво просимо, $userId'),
    Unauthenticated() => const Text('Увійдіть, будь ласка'),
  };
}

// 🧠 sealed гарантує, що ти перерахував усі можливі підкласи, а Dart може дати підказку при switch.

// 🪤 Часті помилки:
// Неможливо розширити sealed-клас в іншому пакеті → це помилка, якщо, наприклад, хочеш додати ще один стан в app-layer.
// Потрібно використовувати final, base, sealed або abstract для кожного підкласу.
