import 'package:flutter/material.dart';
import 'package:flutter_adaptive_scaffold/flutter_adaptive_scaffold.dart';
import 'package:learn_dart/constant/app_constant.dart';
import 'package:learn_dart/ui/example/example_screen.dart';
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
          smallBreakpoint: const WidthPlatformBreakpoint(
            end: AppConstant.smallBreakPoint,
          ),
          mediumBreakpoint: const WidthPlatformBreakpoint(
            begin: AppConstant.smallBreakPoint,
            end: AppConstant.mediumBreakPoint,
          ),
          largeBreakpoint: const WidthPlatformBreakpoint(
            begin: AppConstant.mediumBreakPoint,
          ),
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
          body: (_) => provider.primaryPage,
          smallBody: (_) => provider.primaryPage,
          secondaryBody: (_) => provider.secondaryPage,
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
