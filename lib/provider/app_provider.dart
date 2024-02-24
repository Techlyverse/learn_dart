import 'package:flutter/widgets.dart';
import '../ui/activity/activity_tab.dart';
import '../ui/example/example_tab.dart';
import '../ui/tutorial/tutorial_tab.dart';

class AppProvider extends ChangeNotifier {
  static const List<Widget> pages = [
    TutorialTab(),
    ExampleTab(),
    PlaygroundTab(),
  ];

  int currentIndex = 0;
  Widget get currentPage => pages[currentIndex];

  void updatePage(int index) {
    currentIndex = index;
    notifyListeners();
  }
}
