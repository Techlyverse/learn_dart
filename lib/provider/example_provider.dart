import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:learn_dart/constant/app_constant.dart';
import 'package:learn_dart/model/example_model.dart';
import 'package:learn_dart/ui/example/example_screen.dart';

class ExampleProvider extends ChangeNotifier {
  int currentIndex = 0;
  String selectedTopic = "Basic";
  String searchTerm = "";

  List<ExampleModel> allExamples = [];

  List<ExampleModel> filteredList = [];

  ExampleProvider() {
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
      FirebaseFirestore.instance
          .collection('updates')
          .doc('isUpdateAvailable')
          .snapshots()
          .listen((snapshot) {
        print("the snapshot ${snapshot.data()}");
        if (snapshot.exists && snapshot.data()?['isUpdateAvailable'] == true) {
          FirebaseFirestore.instance
              .collection('examples')
              .snapshots()
              .listen((querySnapshot) {
            allExamples = querySnapshot.docs
                .map((doc) => ExampleModel.fromFirestore(doc))
                .toList();

            applyFilters();
          });
        } else {
          allExamples = [];
          filteredList = [];
          notifyListeners();
        }
      });
    } catch (e) {
      print("Error setting up listener: $e");
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

  void updateSelectedTopic(String topic) {
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
