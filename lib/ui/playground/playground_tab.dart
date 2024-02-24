import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learn_dart/ui/game/game.dart';

import 'quizquestions.dart';

class PlaygroundTab extends StatefulWidget {
  const PlaygroundTab({super.key});

  @override
  State<PlaygroundTab> createState() => _PlaygroundTabState();
}

class _PlaygroundTabState extends State<PlaygroundTab> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppBar(
          title: const Text("Play"),
        ),
        InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const PlayGroundScreen()));
          },
          child: Container(
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
                image: AssetImage("assets/blue.jpg"),
                fit: BoxFit.cover,
                //filterQuality: FilterQuality.none,
              ),
            ),

            child: Text(
              "Playground",
              style: GoogleFonts.gluten(
                fontSize: 30,
                color: Colors.grey.shade800,
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const QuizScreen()));
          },
          child: Container(
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
                  image: AssetImage("assets/pink.jpg"),
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
        //         image: AssetImage("assets/green.jpg"),
        //         fit: BoxFit.cover,
        //         filterQuality: FilterQuality.none,
        //       )),
        //
        //   child: Text(
        //     "Certificate",
        //     style: GoogleFonts.gluten(fontSize: 40),
        //   ),
        // ),
      ],
    );
  }
}
