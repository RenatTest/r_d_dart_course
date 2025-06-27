void main() {
  // Position
  printFullName('Renat', 'Bakaiev');
  print('Rectangle area is: ${calculateRectangleArea(3, 5)}');
  introducePerson('Renat', 39, 'Kyiv');
  // Named
  greetUser(name: 'Renat', greeting: 'Hello');
  createAccount(username: 'Renat', email: 'renat@gmail.com');
  sendEmail(to: 'Wife', subject: 'Title', body: 'Desc');
  // Not required position
  print(describeCar('Germany', 'BMW', 2025));
  print(formatDate(5, 5, 1986));
  print(buildUrl("https", "example.com", "docs"));
  // Combo
  print(
    createUserProfile('Renat', 22, email: 'email@gmail.com', phone: "111222"),
  );
  print(
    generateReport(
      'Title',
      DateTime.now(),
      author: 'Renat',
      confidential: false,
    ),
  );
  print(placeOrder('T-shirt', 10, customer: 'Ren', expressDelivery: false));
  // Params with default
  print(makeCoffee(type: 'coffee', sugar: 3, milk: true));
  print(bookFlight(from: 'Kyiv', to: 'Amsterdam', direct: true, passengers: 4));
  // All types
  print(
    orderPizza(
      "small",
      3,
      "stuffed",
      topping: "mushrooms",
      extraCheese: true,
      note: "No onions please",
    ),
  );
}

// Position
void printFullName(String firstName, String lastName) {
  print('Full name: $firstName $lastName');
}

int calculateRectangleArea(int width, int height) {
  return width * height;
}

void introducePerson(String name, int age, String city) {
  print("My name is $name, I am $age years old, and I live in $city.");
}

// Named
void greetUser({required String name, required String greeting}) {
  print('$greeting, $name!');
}

void createAccount({
  required String username,
  required String email,
  int? age,
}) {
  print(
    'Account created for $username with email $email. Age: ${age ?? 'not specified'}',
  );
}

void sendEmail({
  required String to,
  String subject = "No Subject",
  String body = "",
}) {
  print('''

Sending email to $to
Subject: $subject
Body: $body

 ''');
}

// Not required position

String describeCar([String? make, String? model, int? year]) {
  return 'Car: ${make ?? "Unknown"} ${model ?? "Unknown"}, Year: ${year ?? "Unknown year"}';
}

String formatDate([int? day, int? month, int? year]) {
  return 'Date: ${day ?? "??"}/${month ?? "??"}/${year ?? "??"}';
}

String buildUrl([String? protocol, String? domain, String? path]) {
  return '${protocol ?? "http"}://${domain ?? "localhost"}${path == null ? '' : '/'}${path ?? ""}';
}

// Combo

String createUserProfile(String name, int id, {String? email, String? phone}) {
  return '''
  
User: $name (ID: $id)
Email: ${email ?? "not provided"}
Phone: ${phone ?? "not provided"}
  
  ''';
}

String generateReport(
  String title,
  DateTime date, {
  String? author,
  bool? confidential,
}) {
  return '''
Report: $title
Date: $date
Author: ${author ?? "Unknown"}
Confidential: ${confidential != null
      ? confidential
            ? 'Yes'
            : 'No'
      : 'No info'}
  ''';
}

String placeOrder(
  String item,
  int quantity, {
  String? customer,
  bool? expressDelivery,
}) {
  return '''
Order Summary:
Item: $item
Quantity: $quantity
Customer: ${customer ?? "Guest"}
Delivery: ${expressDelivery != null
      ? expressDelivery
            ? "Express"
            : "Standard"
      : "Unknown"}
  ''';
}

// Params with default

String makeCoffee({
  String type = "Espresso",
  int sugar = 0,
  bool milk = false,
}) {
  return 'Making a $type with $sugar sugar spoon(s) and ${milk ? 'milk' : 'no milk'}.';
}

String bookFlight({
  String from = 'Kyiv',
  String to = 'London',
  bool direct = true,
  int passengers = 1,
}) {
  return 'Flight from $from to $to, ${direct ? "Direct flight" : "Connecting flight"}, Passengers: $passengers';
}

// All types

String orderPizza(
  String size,
  int quantity,
  String crust, {
  String topping = "cheese",
  bool extraCheese = false,
  String? note,
}) {
  return '''
Order Details:
Size: $size
Quantity: $quantity
Crust: $crust
Topping: $topping
Extra ${extraCheese ? "Yes" : "No"}
Note: ${note ?? 'None'}
  ''';
}
