import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/app_provider.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Consumer<AppProvider>(builder: (context, provider, child) {
        return Scaffold(
          body: provider.currentPage,
          bottomNavigationBar: NavigationBar(
            selectedIndex: provider.currentIndex,
            onDestinationSelected: provider.updatePage,
            destinations: const [
              NavigationDestination(
                icon: Icon(Icons.home_outlined),
                selectedIcon: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                label: "Home",
              ),
              NavigationDestination(
                icon: Icon(Icons.my_library_books_outlined),
                selectedIcon: Icon(
                  Icons.my_library_books,
                  color: Colors.white,
                ),
                label: "Example",
              ),
              NavigationDestination(
                icon: Icon(Icons.leaderboard_outlined),
                selectedIcon: Icon(
                  Icons.leaderboard,
                  color: Colors.white,
                ),
                label: "Rank",
              ),
              NavigationDestination(
                icon: Icon(Icons.sports_esports_outlined),
                selectedIcon: Icon(
                  Icons.sports_esports,
                  color: Colors.white,
                ),
                label: "Play",
              ),
            ],
          ),
        );
      }),
    );
  }
}
