import 'package:flutter/material.dart';
import 'package:learn_dart/model/leadership.dart';

class LeaderboardProvider with ChangeNotifier {
  final ScrollController scrollController = ScrollController();
  final TextEditingController searchController = TextEditingController();

  bool loadingMore = false;

  void _listenScroll() {
    if (scrollController.offset >= scrollController.position.maxScrollExtent) {
      loadingMore = true;
      notifyListeners();

      loadMoreLeaders();
    } else {
      loadingMore = false;
      notifyListeners();
    }
  }

  void initializeState() {
    scrollController.addListener(_listenScroll);
  }

  void disposeState() {
    scrollController.dispose();
    searchController.dispose();
  }

  void searchLeaders() {

    notifyListeners();
  }

  void clearSearch() {
    searchController.clear();
    notifyListeners();
  }

  List<Leader> get getLeaders {
    return searchController.text.trim().isEmpty
        ? person
        : person
            .where((leader) => leader.name
                .toLowerCase()
                .contains(searchController.text.trim().toLowerCase()))
            .toList();
  }



  void loadMoreLeaders() {
    Future.delayed(const Duration(seconds: 2), () {
      person.addAll([
        const Leader('New Leader 1', 9, 'assets/images/male.png'),
        const Leader('New Leader 2', 10, 'assets/images/male.png'),
      ]);
      notifyListeners();
    });
  }
}




const List<Leader> person = [
  Leader('Dhiren ', 1, 'assets/images/male.png'),
  Leader('Raghav Shuktla ', 2, 'assets/images/male.png'),
  Leader('Dhiren ', 3, 'assets/images/male.png'),
  Leader('Raghav Shuktla ', 4, 'assets/images/male.png'),
  Leader('Dhiren ', 5, 'assets/images/male.png'),
  Leader('Raghav Shuktla ', 6, 'assets/images/male.png'),
  Leader('Dhiren ', 7, 'assets/images/male.png'),
  Leader('Raghav Shuktla ', 8, 'assets/images/male.png'),
];
