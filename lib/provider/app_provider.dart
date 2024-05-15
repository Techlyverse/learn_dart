import 'package:flutter/widgets.dart';
import '../ui/activity/quiz_screen.dart';
import '../ui/activity/activity_tab.dart';
import '../ui/example/example_screen.dart';
import '../ui/example/example_tab.dart';
import '../ui/tutorial/tutorial_screen.dart';
import '../ui/tutorial/tutorial_tab.dart';

class AppProvider extends ChangeNotifier {
  static const List<Widget> primaryPages = [
    TutorialTab(),
    ExampleTab(),
    PlaygroundTab(),
  ];


  static const List<Widget> secondaryPages = [
    TutorialScreen(),
    ExampleScreen(),
    QuizScreen(),
  ];


  int currentIndex = 0;
  Widget get primaryPage => primaryPages[currentIndex];
  Widget get secondaryPage => secondaryPages[currentIndex];


  void updatePage(int index) {
    currentIndex = index;
    notifyListeners();
  }
}
