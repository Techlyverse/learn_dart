import 'package:flutter/material.dart';
import 'package:learn_dart/constant/app_constant.dart';
import 'package:learn_dart/data/example_list.dart';
import 'package:learn_dart/model/example_model.dart';
import 'package:learn_dart/ui/example/example_screen.dart';

class ExampleProvider extends ChangeNotifier {
  int currentIndex = 0;
  ExampleModel get currentExample => filteredList[currentIndex];

  List<ExampleModel> filteredList = exampleList.where((example) => example.type == "Basic").toList();
  String? selectedTopic;
  void updateIndex(int index) {
    currentIndex = index;
    notifyListeners();
  }

  void filterList(String value) {
    if (value.isEmpty) {
      filteredList = selectedTopic == null
          ? exampleList
          : exampleList
              .where((example) => example.type == selectedTopic)
              .toList();
    } else {
      filteredList = (selectedTopic == null
              ? exampleList
              : exampleList.where((example) => example.type == selectedTopic))
          .where((example) =>
              example.title.toLowerCase().contains(value.toLowerCase()))
          .toList();
    }
    notifyListeners();
  }

  void chipsFilter() {
    filteredList = (exampleList.isEmpty && selectedTopic == null)
        ? exampleList
        : exampleList
            .where((example) => example.type == selectedTopic)
            .toList();
    notifyListeners();
  }

  void openExample({required BuildContext context, int? index}) {
    updateIndex(index ?? currentIndex);
    if (MediaQuery.of(context).size.width < AppConstant.smallBreakPoint) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => const ExampleScreen()));
    }
  }
}
