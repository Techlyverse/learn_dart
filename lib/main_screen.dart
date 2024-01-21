import 'package:flutter/material.dart';
import 'package:learn_dart/ui/example_screen.dart';
import 'package:learn_dart/ui/game/game.dart';
import 'package:learn_dart/ui/home/home_screen.dart';
import 'package:learn_dart/ui/leaderboard/leaderboard_screen.dart';
import 'package:learn_dart/ui/quiz/quiz_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentPage = 0;
  List<Widget> pages = [
    const HomeScreen(),
    const ExampleScreen(),
    const LeaderboardScreen(),
    GameScreen(),
   // const QuizScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentPage],
      bottomNavigationBar: NavigationBar(
        selectedIndex: currentPage,
        onDestinationSelected: (value) {
          setState(() {
            currentPage = value;
          });
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            selectedIcon: Icon(Icons.home),
            label: "Home",
          ),
          NavigationDestination(
            icon: Icon(Icons.my_library_books_outlined),
            selectedIcon: Icon(Icons.my_library_books),
            label: "Home",
          ),
          NavigationDestination(
            icon: Icon(Icons.leaderboard_outlined),
            selectedIcon: Icon(Icons.leaderboard),
            label: "Home",
          ),
          NavigationDestination(
              icon: Icon(Icons.dashboard_outlined),
              selectedIcon: Icon(Icons.dashboard),
              label: "Home"),
        ],
      ),
    );
  }
}
