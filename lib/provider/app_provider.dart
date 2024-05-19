import 'package:flutter/widgets.dart';

class AppProvider extends ChangeNotifier {
  int currentIndex = 0;

  void updatePage(int index) {
    currentIndex = index;
    notifyListeners();
  }
}
