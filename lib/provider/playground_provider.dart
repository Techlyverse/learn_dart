import 'package:flutter/material.dart';
import 'package:learn_dart/data/playground_list.dart';
import 'package:learn_dart/model/playground_model.dart';
import 'package:learn_dart/ui/playground/playground_screen.dart';
import '../constant/app_constant.dart';

class PlaygroundProvider extends ChangeNotifier {
  int currentIndex = 0;
  PlaygroundModel get currentPlayground => playgroundList[currentIndex];

  void updateIndex(int index) {
    currentIndex = index;
    notifyListeners();
  }

  void openPlayground({required BuildContext context, int? index}) {
    updateIndex(index ?? currentIndex);
    if (MediaQuery.of(context).size.width < AppConstant.smallBreakPoint) {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const PlaygroundScreen()));
    }
  }
}
