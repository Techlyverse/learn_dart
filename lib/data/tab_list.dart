import 'package:flutter/material.dart';

import '../model/tab_model.dart';
import '../ui/example/example_screen.dart';
import '../ui/example/example_tab.dart';
import '../ui/playground/playground_screen.dart';
import '../ui/playground/playground_tab.dart';
import '../ui/quiz/quiz_screen.dart';
import '../ui/quiz/quiz_tab.dart';
import '../ui/tutorial/tutorial_screen.dart';
import '../ui/tutorial/tutorial_tab.dart';

const List<TabModel> tabList = [
  TabModel(
    label: "Tutorials",
    icon: Icons.home_outlined,
    selectedIcon: Icons.home_rounded,
    primaryPage: TutorialTab(),
    secondaryPage: TutorialScreen(),
  ),
  TabModel(
    label: "Examples",
    icon: Icons.menu_book_outlined,
    selectedIcon: Icons.menu_book_rounded,
    primaryPage: ExampleTab(),
    secondaryPage: ExampleScreen(),
  ),
  TabModel(
    label: "Playground",
    icon: Icons.sports_esports_outlined,
    selectedIcon: Icons.sports_esports_rounded,
    primaryPage: PlaygroundTab(),
    secondaryPage: PlaygroundScreen(),
  ),
  TabModel(
    label: "Quiz",
    icon: Icons.school_outlined,
    selectedIcon: Icons.school_rounded,
    primaryPage: QuizTab(),
    secondaryPage: QuizScreen(),
  ),
];
