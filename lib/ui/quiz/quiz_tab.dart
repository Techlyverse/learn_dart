import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../playground/playground_screen.dart';
import 'quiz_screen.dart';

class QuizTab extends StatefulWidget {
  const QuizTab({super.key});

  @override
  State<QuizTab> createState() => _QuizTabState();
}

class _QuizTabState extends State<QuizTab> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width / 2 - 20;
    return SingleChildScrollView(
      child: Column(
        children: [
          AppBar(title: const Text("Quiz")),

          Container(
            height: 200,
            width: double.maxFinite,
            margin: const EdgeInsets.all(12),
            //padding: const EdgeInsets.all(12),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                // gradient: const LinearGradient(
                //   begin: Alignment.topLeft,
                //   end: Alignment.bottomRight,
                //   colors: [
                //     Colors.blueAccent,
                //     Colors.lightBlueAccent,
                //   ],
                // ),
                image: const DecorationImage(
                  image: AssetImage("assets/images/pink.jpg"),
                  fit: BoxFit.cover,
                  // filterQuality: FilterQuality.none,
                )),

            child: Text(
              "Quiz",
              style: GoogleFonts.gluten(
                fontSize: 30,
                color: Colors.grey.shade800,
              ),
            ),
          ),
          // Container(
          //   height: 200,
          //   width: double.maxFinite,
          //   margin: const EdgeInsets.all(12),
          //   //padding: const EdgeInsets.all(12),
          //   alignment: Alignment.center,
          //   decoration: BoxDecoration(
          //       borderRadius: BorderRadius.circular(16),
          //       // gradient: const LinearGradient(
          //       //   begin: Alignment.topLeft,
          //       //   end: Alignment.bottomRight,
          //       //   colors: [
          //       //     Colors.blueAccent,
          //       //     Colors.lightBlueAccent,
          //       //   ],
          //       // ),
          //       image: DecorationImage(
          //         image: AssetImage("assets/images/green.jpg"),
          //         fit: BoxFit.cover,
          //         filterQuality: FilterQuality.none,
          //       )),
          //
          //   child: Text(
          //     "Certificate",
          //     style: GoogleFonts.gluten(fontSize: 40),
          //   ),
          // ),

          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
