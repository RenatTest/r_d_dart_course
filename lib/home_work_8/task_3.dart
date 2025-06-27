// Task 3: Словники (Map)

// 1. Підключіть до проєкту пакет word_generator (див. https://pub.dev/packages/word_generator).
// 2. Створіть список nounsList із 50 випадкових слів (як це зробити, дивіться в документації: https://pub.dev/packages/word_generator#randomnouns).
// 3. Із nounsList створіть Map<String, int> nounsMap, де:
//  - ключ — слово;
//  - значення — кількість символів у цьому слові.
// 4. Створіть нову змінну Map<String, int> tempNouns.
// 5. Додайте у tempNouns лише ті пари зі nounsMap, де довжина слова — парне число.
// 6. Виведіть всі ключі зі tempNouns.

import 'package:word_generator/word_generator.dart';

void main() {
  final wordGenerator = WordGenerator();
  List<String> nounsList = wordGenerator.randomNouns(50);
  print(nounsList);
  print('---------------------------------------');
  Map<String, int> nounsMap = {};
  for (final word in nounsList) {
    nounsMap[word] = word.length;
  }
  print(nounsMap);
  print('---------------------------------------');
  final tempNouns = <String, int>{};
  // 1
  // for (var entry in nounsMap.entries) {
  //   if (entry.key.length % 2 == 0) { // або entry.value % 2 == 0
  //     tempNouns[entry.key] = entry.value;
  //   }
  // }
  // 2
  nounsMap.forEach((key, value) {
    if (key.length % 2 == 0) {
      // або entry.value % 2 == 0
      tempNouns[key] = value;
    }
  });
  print(tempNouns);
  print('---------------------------------------');
  for (var key in tempNouns.keys) {
    print(key);
  }
}
