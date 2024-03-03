import 'package:learn_dart/model/example_model.dart';

const List<ExampleModel> exampleList = [
  ExampleModel(
    title: "Hello World",
    description: "This is a classic program in any programming language. It simply prints Hello World! ",
    type: "Basic",
    program: '''
  void main() {
    print("Hello World!");
  }
''',
  ),
  ExampleModel(
    title: "Variables",
    description: "we declare a variable name and assign it a string value.",
    type: "Basic",
    program: '''
  void main() {
    var name = "Bill Gates";
    print("Hello, \$name!");
  }''',
  ),
  ExampleModel(
    title: "Data Types",
    description: "Dart supports various data types like integers, doubles, booleans, and strings. Here's an example with different data types",
    type: "Basic",
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
    type: "Basic",
    program: '''
  void main() {
    int num1 = 10;
    int num2 = 5;

    int sum = num1 + num2;
    print("Sum: \$sum");
    }
  ''',
  ),
  ExampleModel(
    title: "Operators II",
    description: "Dart provides basic arithmetic operators",
    type: "Basic",
    program: '''
  void main() {
    int num1 = 10;
    int num2 = 5;
    int difference = num1 - num2;
    print("Difference: \$difference");
    }
  ''',
  ),
  ExampleModel(
    title: "Functions",
    description: "This example shows how to declare a function in Dart.",
    type: "Basic",
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
    type:"Control Flow statements",
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
    type:"Control Flow statements",
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
    title: "Loops I",
    description: "Basic For loop in Dart.",
    type:"Control Flow statements",
    program: '''
  void main() {
    for (var i = 0; i < 5; i++) {
      print('Hello');
  }
}

''',
  ),
  ExampleModel(
    title: "Loops II",
    description: "Basic While loop in Dart.",
    type:"Control Flow statements",
    program: '''
  void main() {
    int count = 0;
    while (count < 3) {
      print('Count: \$count');
      count++;
  }
  }
''',
  ),
  ExampleModel(
    title: "Lists",
    description: "This example shows how to create a list and access its elements.",
    type:"Basic",
    program: '''
  void main() {
    var fruits = ['apple', 'banana', 'mango'];
    print(fruits[0]);
  }
''',
  ),
  ExampleModel(
    title: "Sets",
    description: "Unordered collections of unique items.",
    program: '''
  void main() {
  Set<int> numbers = {1, 2, 3, 2}; 
  print(numbers); 
  }
  // Output: {1, 2, 3} 
  ''',
  ),
  ExampleModel(
    title: "Maximum of two numbers",
    description: "",
    program: '''
  void main() {
  int num1 = 15;
  int num2 = 20;

  int maxNumber = num1 > num2 ? num1 : num2;

  print('The maximum number is: \$maxNumber');
  }

''',
  ),
  ExampleModel(
    title: "Print elements in list",
    description: "Loop through a list and print its elements",
    type:"Control Flow statements",
    program: '''
  void main() {
  List<String> companies = ['Amazon', 'Microsoft', 'Google'];

  for (String company in companies) {
    print('\$company!');
  }
  }
''',
  ),
  ExampleModel(
    title: "Calculate Area",
    description: "Calculate the area of a rectangle",
    type:"Basic",
    program: '''
  void main() {
  double length = 5.0;
  double width = 3.0;

  double area = length * width;

  print('The area of the rectangle is: \$area square units.');
  }

''',
  ),
  ExampleModel(
    title: "Find average",
    description: "Find the average of a list of numbers",
    type:"Control Flow statements",
    program: '''
  void main() {
  List<int> numbers = [10, 20, 30, 40];

  double sum = 0;
  for (int number in numbers) {
    sum += number;
  }

  double average = sum / numbers.length;

  print('The average of the list is: \$average');
  }
''',
  ),
  ExampleModel(
    title: "Combine Two Lists",
    description: "Combine two lists into a single list",
    program: '''
  void main() {
  List<int> list1 = [1, 2, 3];
  List<int> list2 = [4, 5, 6];

  List<int> combined = list1 + list2;

  print('The combined list is: \$combined');
  }
''',
  ),
  ExampleModel(
    title: "Print in Reverse Order",
    description: "Print elements of a list in reverse order",
    type:"Control Flow statements",
    program: '''
  void main() {
  List<int> numbers = [10, 20, 30, 40];

  for (int number in numbers.reversed) {
    print(number);
  }
  }
''',
  ),
  ExampleModel(
    title: "Check Number",
    description: "Check if a number is positive, negative, or zero",
    type:"Control Flow statements",
    program: '''
  void main() {
  int number = -5;

  if (number > 0) {
    print('\$number is positive.');
  } else if (number < 0) {
    print('\$number is negative.');
  } else {
    print('\$number is zero.');
  }
  }

''',
  ),
  ExampleModel(
    title: "Convert string ",
    description: "Convert a string to uppercase",
    program: '''
  void main() {
  String text = 'MiXeD cAsE';

  String upperCase = text.toUpperCase();
  print('Uppercase: \$upperCase');
  }
''',
  ),
  ExampleModel(
    title: "Check Empty",
    description: "Check if a list is empty",
    program: '''
  void main() {
  List<int> numbers = [];

  bool isEmpty = numbers.isEmpty;

  print('The list is \${isEmpty ? 'empty' : 'not empty'}.');
  }

''',
  ),


];
