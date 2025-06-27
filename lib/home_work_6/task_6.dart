void main() {
  //   Завдання 6: Умовні конструкції if/else
  // 1) Створіть змінну examScore з значенням 56
  // 2) Створіть умовні конструкції if / else if / else
  // 3) Якщо більше 90 — вивести “Відмінно”.
  // 4) Якщо 75–90 — “Добре”.
  // 5) Якщо 60–74 — “Задовільно”.
  // 6) Якщо менше 60 — “Не здано”.
  // 7) Додатково: якщо оцінка менше 20 — вивести “Повторити курс”.
  // 8) Поекспериментуйте, змінюючи значення examScore

  final int examScore = 99;
  final int perfectlyScores = 90;
  final int satisfactorilyScores = 75;
  final int notEnoughScores = 60;
  final int lowScores = 20;

  if (examScore > perfectlyScores) {
    print('Відмінно');
  } else if (examScore >= satisfactorilyScores &&
      examScore <= perfectlyScores) {
    print('Добре');
  } else if (examScore >= notEnoughScores && examScore < satisfactorilyScores) {
    print('Задовільно');
  } else if (examScore < notEnoughScores && examScore >= lowScores) {
    print('Не здано');
  } else {
    print('Повторити курс');
  }
}
