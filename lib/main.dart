import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learn_dart/core/services/ui_style.dart';
import 'package:learn_dart/core/theme/dark_theme.dart';
import 'package:learn_dart/core/theme/light_theme.dart';
import 'package:learn_dart/ui/home_screen.dart';
import 'package:learn_dart/ui/main_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setUIStyle();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightTheme(),
      darkTheme: darkTheme(),
      themeMode: ThemeMode.system,
      home: const MainScreen(),
    );
  }
}
