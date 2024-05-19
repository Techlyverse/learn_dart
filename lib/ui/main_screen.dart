import 'package:flutter/material.dart';
import 'package:flutter_adaptive_scaffold/flutter_adaptive_scaffold.dart';
import 'package:learn_dart/constant/app_constant.dart';
import 'package:learn_dart/data/tab_list.dart';
import 'package:provider/provider.dart';
import '../provider/app_provider.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: FocusScope.of(context).unfocus,
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
          body: (_) => tabList[provider.currentIndex].primaryPage,
          smallBody: (_) => tabList[provider.currentIndex].primaryPage,
          secondaryBody: (_) => tabList[provider.currentIndex].secondaryPage,
          smallSecondaryBody: AdaptiveScaffold.emptyBuilder,
          destinations: tabList
              .map((e) => NavigationDestination(
                    label: e.label,
                    icon: Icon(e.icon),
                    selectedIcon: Icon(e.selectedIcon, color: Colors.white),
                  ))
              .toList(),
        );
      }),
    );
  }
}
