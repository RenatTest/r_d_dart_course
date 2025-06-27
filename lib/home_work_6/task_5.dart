void main() {
  //   Завдання 5: Оператори присвоєння
  // Використовувати тільки оператори присвоєння (+=, -=, *=, /=)
  // 1) Створіть змінну score = 0.
  // 2) Створіть зміни з даними:
  // correctAnswers = 17;
  // mistakes = 3;
  // totalQuestions = 20;
  // 3) Додайте 10 балів за кожну правильну відповідь.
  // 4) Відніміть 5 балів за кожну помилку.
  // 5) Збільшіть загальну кількість балів у 2 рази.
  // 6) Поділіть бали на кількість запитань.
  // 7) Виведіть остаточний результат.

  num score = 0;
  int correctAnswers = 17;
  int mistakes = 3;
  int totalQuestions = 20;
  int correctAnswersPoints = 10;
  int mistakesPoints = 5;
  int multiplyValue = 2;

  score += correctAnswers * correctAnswersPoints;
  score -= mistakes * mistakesPoints;
  score *= multiplyValue;
  score /= totalQuestions;
  print('The final scores you have: $score');
}
