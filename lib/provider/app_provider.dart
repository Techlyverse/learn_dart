import 'package:flutter/widgets.dart';
import '../ui/dashboard/dashboard_tab.dart';
import '../ui/example/example_tab.dart';
import '../ui/playground/playground_tab.dart';
import '../ui/tutorial/tutorial_tab.dart';

class AppProvider extends ChangeNotifier {
  static const List<Widget> pages = [
    TutorialTab(),
    ExampleTab(),
    DashboardTab(),
    PlaygroundTab(),
  ];

  int currentIndex = 3;
  Widget get currentPage => pages[currentIndex];

  void updatePage(int index) {
    currentIndex = index;
    notifyListeners();
  }
}
