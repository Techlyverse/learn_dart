import 'package:learn_dart/model/example_model.dart';

const List<ExampleModel> exampleList = [
  ExampleModel(
    title: "Hello World",
    description: "This is a classic program in any programming language. It simply prints Hello World! ",
    program: '''
  void main() {
    print("Hello World!");
}
''',
  ),
  ExampleModel(
    title: "Variables",
    description: "we declare a variable name and assign it a string value.",
    program: '''
  void main() {
    var name = "Bill Gates";
    print("Hello, \$name!");
}''',
  ),
  ExampleModel(
    title: "Data Types",
    description: "Dart supports various data types like integers, doubles, booleans, and strings. Here's an example with different data types",
    program: '''
  void main() {
    int age = 30;
    double pi = 3.14159;
    bool isTrue = true;
    String message = "This is a string.";

    print("Age: \$age");
    print("Pi: \$pi");
    print("Is it true? \$isTrue");
    print("Message: \$message");
}
''',
  ),
  ExampleModel(
    title: "Operators I",
    description: "Dart provides basic arithmetic operators",
    program: '''
  void main() {
    int num1 = 10;
    int num2 = 5;

    int sum = num1 + num2;
    print("Sum: \$sum");
  ''',
  ),
  ExampleModel(
    title: "Operators II",
    description: "Dart provides basic arithmetic operators",
    program: '''
  void main() {
    int num1 = 10;
    int num2 = 5;
    int difference = num1 - num2;
    print("Difference: \$difference");
  ''',
  ),
  ExampleModel(
    title: "Functions",
    description: "This example shows how to declare a function in Dart.",
    program: '''
  void main() {
    print(sum(5, 3));
}

  int sum(int a, int b) {
    return a + b;
}
''',
  ),
  ExampleModel(
    title: "If-Else Statements I",
    description: "It checks if a number is even or odd.",
    program: '''
  void main() {
    var number = 7;
    if (number % 2 == 0) {
      print('\$number is even');
  } else {
      print('\$number is odd');
  }
}
''',
  ),
  ExampleModel(
    title: "If-Else Statements II",
    description: "",
    program: '''
  void main() {
    var grade = 85;
    if (grade >= 90) {
      print('A');
  } else if (grade >= 80) {
      print('B');
  } else if (grade >= 70) {
      print('C');
  } else {
      print('F');
  }
}

''',
  ),
  ExampleModel(
    title: "Loops",
    description: "Basic for loop in Dart.",
    program: '''
  void main() {
    for (var i = 0; i < 5; i++) {
      print('Hello');
  }
}

''',
  ),
  ExampleModel(
    title: "Lists",
    description: "This example shows how to create a list and access its elements.",
    program: '''
  void main() {
    var fruits = ['apple', 'banana', 'mango'];
    print(fruits[0]);
}
''',
  ),


];
