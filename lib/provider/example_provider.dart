import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:learn_dart/constant/app_constant.dart';
import 'package:learn_dart/model/example_model.dart';
import 'package:learn_dart/ui/example/example_screen.dart';

class ExampleProvider extends ChangeNotifier {
  int currentIndex = 0;
  String? selectedTopic;
  String searchTerm = "";

  // List that holds Firestore data
  List<ExampleModel> allExamples = [];

  // Filtered list based on selected topic and search term
  List<ExampleModel> filteredList = [];

  ExampleProvider() {
    // Fetch data on provider initialization
    fetchData();
  }

  ExampleModel get currentExample => filteredList.isNotEmpty
      ? filteredList[currentIndex]
      : ExampleModel(id: '', title: '', description: '', program: '', type: '');

  void updateIndex(int index) {
    currentIndex = index;
    notifyListeners();
  }

  Future<void> fetchData() async {
    try {
      QuerySnapshot querySnapshot =
          await FirebaseFirestore.instance.collection('examples').get();

      // Map Firestore data to ExampleModel
      allExamples = querySnapshot.docs
          .map((doc) => ExampleModel.fromFirestore(doc))
          .toList();

      // Apply the initial filter (if any)
      applyFilters();

      notifyListeners();
    } catch (e) {
      print("Error fetching data: $e");
    }
  }

  void applyFilters() {
    filteredList = allExamples
        .where((example) =>
            (selectedTopic == null || example.type == selectedTopic) &&
            (searchTerm.isEmpty ||
                example.title.toLowerCase().contains(searchTerm.toLowerCase())))
        .toList();
    notifyListeners();
  }

  void updateSearchTerm(String value) {
    searchTerm = value;
    applyFilters();
  }

  void updateSelectedTopic(String? topic) {
    selectedTopic = topic;
    applyFilters();
  }

  void openExample({required BuildContext context, int? index}) {
    updateIndex(index ?? currentIndex);
    if (MediaQuery.of(context).size.width < AppConstant.smallBreakPoint) {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const ExampleScreen()));
    }
  }
}
