import 'package:flutter/material.dart';

class OnBoardingProvider with ChangeNotifier {
  final PageController _pageController = PageController();
  double _activePage = 0;
  List<String> bgImage = ["assets/images/blue.jpg", "assets/images/green.jpg", "assets/images/pink.jpg"];
  List<String> des = ["My Desc 1", "My Desc 2", "My Desc 3"];

  PageController get pageController => _pageController;
  double get activePage => _activePage;

  OnBoardingProvider() {
    _pageController.addListener(() {
      _activePage = _pageController.page!;
      notifyListeners();
    });
  }

  void update() {
    notifyListeners();
  }
  List<Widget> buildIndicator() {
    final indicators = <Widget>[];

    for (var i = 0; i < 3; i++) {
      indicators.add(
        i == activePage.round() ? _indicatorsTrue(i) : _indicatorsFalse(i),
      );
    }
    return indicators;
  }

  Widget _indicatorsTrue(int index) {
    final int color;
    if (activePage == 0) {
      color = 0xffffe24e;
    } else if (activePage == 1) {
      color = 0xffa3e4f1;
    } else {
      color = 0xff31b77a;
    }

    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: 100,
      width: 100,
      margin: EdgeInsets.only(right: 8, bottom: 30),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/bird.png"),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(50),
        color: Color(color),
      ),
    );
  }

  Widget _indicatorsFalse(int index) {
    return InkWell(
      onTap: () {},
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        height: 100,
        width: 60,
        margin: const EdgeInsets.only(right: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Colors.grey.shade100,
        ),
      ),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}
