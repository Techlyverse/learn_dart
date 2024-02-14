import 'package:flutter/material.dart';
import 'package:learn_dart/core/data/list_provider.dart';
import 'package:learn_dart/core/theme/dark_theme.dart';
import 'package:learn_dart/core/theme/light_theme.dart';
import 'package:learn_dart/ui/main_screen.dart';
import 'package:provider/provider.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: listProviders,
      child: MaterialApp(
        theme: lightTheme(),
        darkTheme: darkTheme(),
        themeMode: ThemeMode.light,
        home: const MainScreen(),
      ),
    );
  }
}