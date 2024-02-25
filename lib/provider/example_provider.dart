import 'package:flutter/material.dart';
import 'package:learn_dart/constant/app_constant.dart';
import 'package:learn_dart/data/example_list.dart';
import 'package:learn_dart/model/example_model.dart';
import 'package:learn_dart/ui/example/example_screen.dart';

class ExampleProvider extends ChangeNotifier {
  int currentIndex = 0;
  ExampleModel get currentExample => exampleList[currentIndex];

  void updateIndex(int index) {
    currentIndex = index;
    notifyListeners();
  }

  void openExample({required BuildContext context, int? index}) {
    updateIndex(index ?? currentIndex);
    if (MediaQuery.of(context).size.width < AppConstant.smallBreakPoint) {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const ExampleScreen()));
    }
  }
}
