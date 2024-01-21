import 'package:flutter/material.dart';
import 'package:learn_dart/model/leadership.dart';

class LeadershipProvider with ChangeNotifier {
  final List<Leader> person = [
    Leader('Dhiren ', 1, 'assets/images/male.png'),
    Leader('Raghav Shuktla ', 2, 'assets/images/male.png'),
    Leader('Dhiren ', 3, 'assets/images/male.png'),
    Leader('Raghav Shuktla ', 4, 'assets/images/male.png'),
    Leader('Dhiren ', 5, 'assets/images/male.png'),
    Leader('Raghav Shuktla ', 6, 'assets/images/male.png'),
    Leader('Dhiren ', 7, 'assets/images/male.png'),
    Leader('Raghav Shuktla ', 8, 'assets/images/male.png'),
  ];

  List<Leader> get leaders => person;
  void loadMoreLeaders() {
    Future.delayed(Duration(seconds: 2), () {
      person.addAll([
        Leader('New Leader 1', 9, 'assets/images/male.png'),
        Leader('New Leader 2', 10, 'assets/images/male.png'),
      ]);
      notifyListeners();
    });
  }
}
