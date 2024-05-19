import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learn_dart/ui/playground/playground_feed.dart';

import '../quiz/quiz_screen.dart';
import 'playground_screen.dart';

class PlaygroundTab extends StatefulWidget {
  const PlaygroundTab({super.key});

  @override
  State<PlaygroundTab> createState() => _PlaygroundTabState();
}

class _PlaygroundTabState extends State<PlaygroundTab> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width / 2 - 20;
    return SingleChildScrollView(
      child: Column(
        children: [
          AppBar(title: const Text("Activity")),
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
                image: AssetImage("assets/images/blue.jpg"),
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
          const PlaygroundFeed()
        ],
      ),
    );
  }
}
