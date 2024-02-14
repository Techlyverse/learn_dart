import 'package:flutter/widgets.dart';
import '../ui/example_screen.dart';
import '../ui/home/home_screen.dart';
import '../ui/leaderboard/leaderboard_screen.dart';
import '../ui/quiz/quiz_screen.dart';

class AppProvider extends ChangeNotifier {
  static const List<Widget> pages = [
    HomeScreen(),
    ExampleScreen(),
    LeaderboardScreen(),
    PlayScreen(),
  ];

  int currentIndex = 3;
  Widget get currentPage => pages[currentIndex];

  void updatePage(int index) {
    currentIndex = index;
    notifyListeners();
  }
}
