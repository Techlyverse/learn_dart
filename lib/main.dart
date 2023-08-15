import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learn_dart/home_screen.dart';
import 'package:learn_dart/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          primary: Colors.lightBlue,
          secondary: Colors.red,
          tertiary: Colors.amber,
        ),
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      home: const MainScreen(),
    );
  }
}