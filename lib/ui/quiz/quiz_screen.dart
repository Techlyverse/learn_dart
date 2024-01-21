import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 200,
          width: double.maxFinite,
          margin: const EdgeInsets.all(12),
          //padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.blueAccent,
                Colors.lightBlueAccent,
              ],
            ),
          ),

          child: Text(
            "Game",
            style: GoogleFonts.gluten(fontSize: 40, color: Colors.white),
          ),
        ),

      ],
    );
  }
}
