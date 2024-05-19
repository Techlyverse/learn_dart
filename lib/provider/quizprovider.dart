import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class QuizProvider with ChangeNotifier {
  int mainIndex = 0;
  Map<int, String?> selectedAnswers = {};

  SwiperController swiperController = SwiperController();

  List<Map<String, dynamic>> questions = [
    {
      'question': 'What is Flutter?',
      'options': [
        'A programming language',
        'A framework for building mobile apps',
        'A design pattern',
        'A state management solution'
      ],
      'correctAnswer': 'A framework for building mobile apps',
    },
    {
      'question': 'What language is used for Flutter app development?',
      'options': ['Dart', 'Java', 'Swift', 'Kotlin'],
      'correctAnswer': 'Dart',
    },
    {
      'question': 'What is the primary function of the MaterialApp widget?',
      'options': [
        'Define the structure of the app',
        'Handle app navigation',
        'Provide the apps theme',
        'Manage app state'
      ],
      'correctAnswer': 'Provide the app\'s theme',
    },
    {
      'question':
          'Which widget is used for creating a scrollable list of widgets in Flutter?',
      'options': ['ListView', 'GridView', 'ScrollView', 'ListTile'],
      'correctAnswer': 'ListView',
    },
    {
      'question': 'What is the purpose of the Scaffold widget in Flutter?',
      'options': [
        'To create a floating action button',
        'To define the overall structure of the app',
        'To handle user input',
        'To manage app state'
      ],
      'correctAnswer': 'To define the overall structure of the app',
    },
    {
      'question': 'In Flutter, what does the term "widget" refer to?',
      'options': [
        'A graphical user interface component',
        'A database entity',
        'A server-side script',
        'A programming language feature'
      ],
      'correctAnswer': 'A graphical user interface component',
    },
    {
      'question': 'Which class is used for handling navigation in Flutter?',
      'options': ['Navigator', 'Route', 'Router', 'NavigationController'],
      'correctAnswer': 'Navigator',
    },
    {
      'question':
          'What is the purpose of the pubspec.yaml file in a Flutter project?',
      'options': [
        'To define project dependencies',
        'To configure the app\'s theme',
        'To manage app state',
        'To define the project structure'
      ],
      'correctAnswer': 'To define project dependencies',
    },
    {
      'question':
          'Which package is commonly used for state management in Flutter?',
      'options': ['Provider', 'Redux', 'MobX', 'Bloc'],
      'correctAnswer': 'Provider',
    },
    {
      'question': 'What is a Flutter widget key used for?',
      'options': [
        'To provide a unique identifier for a widget',
        'To handle user input',
        'To define the app\'s theme',
        'To manage app state'
      ],
      'correctAnswer': 'To provide a unique identifier for a widget',
    },
    // Add more questions as needed
  ];

  String? get selectedAnswer {
    return selectedAnswers[mainIndex];
  }

  void updateMainIndex(int index) {
    mainIndex = index;
    notifyListeners();
  }

  void updateSelectedAnswer(String value) {
    selectedAnswers[mainIndex] = value;
    notifyListeners();
  }

  bool isBack() {
    return mainIndex > 0;
  }

  void goBack() {
    mainIndex--;
    swiperController.previous();
    notifyListeners();
  }

  void checkAnswer() {
    if (selectedAnswer == questions[mainIndex]['correctAnswer']) {
    } else {
    }

    if (mainIndex < questions.length - 1) {
      mainIndex++;
      swiperController.next();
    } else {
      // ScaffoldMessenger(child: child)
    }

    notifyListeners();
  }
}
