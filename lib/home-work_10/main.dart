void main() {
  print('----------Task1-----------');
  Bird bird = Bird();
  bird.makeSound();
  bird.fly();
  print('----------Task2-----------');
  Car car = Car();
  Boat boat = Boat();
  car.move();
  car.charge();
  boat.move();
  print('----------Task3-----------');
  LoadingState loading = LoadingState();
  LoadedState loaded = LoadedState();
  ErrorState error = ErrorState();
  loading.describe();
  loaded.describe();
  error.describe();
  print('----------Task4-----------');
  final manager = ProfileManager();
  manager.emit(ProfileLoading());
  manager.emit(ProfileLoaded('Ren'));
  manager.emit(ProfileError('Not found'));
}

// 📝 Завдання 1
// Створи abstract class Animal з абстрактним методом makeSound().
// Створи interface class CanFly з методом fly() (без реалізації).
// Створи final class Bird, який:
// Наслідує Animal (extends)
// Реалізує CanFly (implements)
// Реалізуй методи makeSound() і fly(), щоб вони виводили у консоль відповідні повідомлення (наприклад, 'Bird is chirping' і 'Bird is flying').
// У функції main() створи екземпляр Bird і виклич обидва методи.

abstract class Animal {
  void makeSound();
}

abstract interface class CanFly {
  void fly();
}

final class Bird extends Animal implements CanFly {
  @override
  void makeSound() {
    print('Bird is chirping');
  }

  @override
  void fly() {
    print('Bird is flying');
  }
}

// 📝 Завдання 2
// Створи sealed class Vehicle з методом move(), який виводить "Vehicle is moving".
// Створи два класи, які наслідують Vehicle:
// Car — перевизнач метод move(), щоб виводити "Car is driving".
// Boat — перевизнач метод move(), щоб виводити "Boat is sailing".
// Створи mixin Electric з методом charge() — виводить "Charging battery".
// Додай змішування Electric у клас Car.
// У main() створи екземпляри Car і Boat. Виклич у кожного метод move(), а у Car додатково — charge().

sealed class Vehicle {
  void move() {
    print('Vehicle is moving');
  }
}

mixin Electric {
  void charge() {
    print('Charging battery');
  }
}

class Car extends Vehicle with Electric {
  @override
  void move() {
    print('Car is driving');
  }
}

class Boat extends Vehicle {
  @override
  void move() {
    print('Boat is sailing');
  }
}

// 📝 Завдання 3
// Створи sealed class State з методом describe(), який виводить "Base state".
// Усередині бібліотеки створи класи:
// LoadingState — наслідує State, метод describe() виводить "Loading...".
// LoadedState — наслідує State, метод describe() виводить "Data loaded".
// Створи клас ErrorState, який реалізує State через implements, але не наслідує (extends). Реалізуй метод describe(), щоб виводити "Error occurred".
// У main() створи по екземпляру кожного стану і виклич їхні методи describe().
// Мета:
// Показати різницю між наслідуванням (extends) і реалізацією інтерфейсу (implements) для sealed class.
// Закріпити розуміння, що sealed class контролює підкласи (через extends), але не забороняє реалізацію.

sealed class State {
  void describe() {
    print('Base state');
  }
}

class LoadingState extends State {
  @override
  void describe() {
    print('Loading...');
  }
}

class LoadedState extends State {
  @override
  void describe() {
    print('Data loaded');
  }
}

class ErrorState implements State {
  @override
  void describe() {
    print('Error occurred');
  }
}

// 📝 Завдання 4 (комбіноване)
// Ти створюєш систему станів і подій для умовного UI-компоненту (наприклад, завантаження профілю):
// Створи sealed class ProfileState, яка матиме базовий метод status().
// Створи підкласи:
// ProfileLoading
// ProfileLoaded (додай поле String name)
// ProfileError (додай поле String message)
// Створи interface class EventHandler, де буде метод handle().
// Створи mixin Logger, який додає метод log(String msg) — він просто виводить повідомлення у консоль.
// Створи клас ProfileManager, який:
// Реалізує EventHandler
// Використовує Logger
// Має метод emit(ProfileState) — залежно від типу стану, виконує status() і викликає log().

// У main():
// Створи ProfileManager
// Передай йому кілька станів (ProfileLoading, ProfileLoaded('Anna'), ProfileError('Not found')) і виклич emit(...).

sealed class ProfileState {
  void status();
}

class ProfileLoading extends ProfileState {
  @override
  status() {
    print('Loading...');
  }
}

class ProfileLoaded extends ProfileState {
  final String name;
  ProfileLoaded(this.name);

  @override
  status() {
    print('Loaded');
  }
}

class ProfileError extends ProfileState {
  final String message;
  ProfileError(this.message);

  @override
  status() {
    print('Error');
  }
}

interface class EventHandler {
  void handle() {}
}

mixin Logger {
  void log(String msg) {
    print(msg);
  }
}

class ProfileManager with Logger implements EventHandler {
  @override
  void handle() {
    print('Handling event...');
  }

  void emit(ProfileState state) {
    state.status();
    if (state is ProfileLoading) {
      log('Loading started');
    } else if (state is ProfileLoaded) {
      log('Data loaded for ${state.name}');
    } else if (state is ProfileError) {
      log('Error: ${state.message}');
    }
  }
}
