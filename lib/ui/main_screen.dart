import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:learn_dart/ui/example_screen.dart';
import 'package:learn_dart/ui/home/home_screen.dart';
import 'package:learn_dart/ui/leaderboard/leaderboard_screen.dart';
import 'package:learn_dart/ui/quiz/quiz_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final currentUser = FirebaseAuth.instance.currentUser;
  static const List<Widget> pages = [
    HomeScreen(),
    ExampleScreen(),
    LeaderboardScreen(),
    QuizScreen(),
  ];
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text("Welcome"),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.person_outline),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.settings_outlined),
          ),
        ],
      ),
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
            label: "Example",
          ),
          NavigationDestination(
            icon: Icon(Icons.leaderboard_outlined),
            selectedIcon: Icon(Icons.leaderboard),
            label: "Leaderboard",
          ),
          NavigationDestination(
            icon: Icon(Icons.dashboard_outlined),
            selectedIcon: Icon(Icons.dashboard),
            label: "Quiz",
          ),
        ],
      ),
    );
  }
}
