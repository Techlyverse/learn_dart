import 'package:flutter/material.dart';
import 'tutorial_feed.dart';

class TutorialTab extends StatelessWidget {
  const TutorialTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          AppBar(title: const Text("Welcome")),
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: AspectRatio(
              aspectRatio: 1.9,
              child: ClipRRect(
                key: const Key("banner"),
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  "assets/images/b1.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const TutorialFeed(),
        ],
      ),
    );
  }
}
