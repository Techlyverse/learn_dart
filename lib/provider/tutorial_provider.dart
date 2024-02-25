import 'package:flutter/material.dart';
import '../constant/app_constant.dart';
import '../data/tutorial_list.dart';
import '../model/tutorial_model.dart';
import '../ui/tutorial/tutorial_screen.dart';

class TutorialProvider extends ChangeNotifier {
  int currentIndex = 0;
  TutorialModel get currentTutorial => tutorialList[currentIndex];

  void updateIndex(int index) {
    currentIndex = index;
    notifyListeners();
  }

  void openTutorial({required BuildContext context, int? index}) {
    updateIndex(index ?? currentIndex);
    if (MediaQuery.of(context).size.width < AppConstant.smallBreakPoint) {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const TutorialScreen()));
    }
  }
}
