import 'package:flutter/material.dart';
import 'package:flutter_adaptive_scaffold/flutter_adaptive_scaffold.dart';
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
        return AdaptiveScaffold(
          smallBreakpoint: const WidthPlatformBreakpoint(end: 700),
          mediumBreakpoint:
              const WidthPlatformBreakpoint(begin: 700, end: 1000),
          largeBreakpoint: const WidthPlatformBreakpoint(begin: 1000),
          useDrawer: false,
          selectedIndex: provider.currentIndex,
          onSelectedIndexChange: provider.updatePage,
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.home_outlined),
              selectedIcon: Icon(
                Icons.home_rounded,
                color: Colors.white,
              ),
              label: "Home",
            ),
            NavigationDestination(
              icon: Icon(Icons.menu_book_outlined),
              selectedIcon: Icon(
                Icons.menu_book_rounded,
                color: Colors.white,
              ),
              label: "Examples",
            ),
            NavigationDestination(
              icon: Icon(Icons.dashboard_outlined),
              selectedIcon: Icon(
                Icons.dashboard_rounded,
                color: Colors.white,
              ),
              label: "Activity",
            ),
          ],
          body: (_) => provider.currentPage,
          smallBody: (_) => provider.currentPage,
          secondaryBody: (_) =>
              Container(color: const Color.fromARGB(255, 234, 158, 192)),
          smallSecondaryBody: AdaptiveScaffold.emptyBuilder,
        );
      }),
    );
  }
}

/*
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
                  Icons.home_rounded,
                  color: Colors.white,
                ),
                label: "Home",
              ),
              NavigationDestination(
                icon: Icon(Icons.menu_book_outlined),
                selectedIcon: Icon(
                  Icons.menu_book_rounded,
                  color: Colors.white,
                ),
                label: "Examples",
              ),
              NavigationDestination(
                icon: Icon(Icons.dashboard_outlined),
                selectedIcon: Icon(
                  Icons.dashboard_rounded,
                  color: Colors.white,
                ),
                label: "Activity",
              ),
            ],
          ),
        );
      }),
    );
  }
}

 */
