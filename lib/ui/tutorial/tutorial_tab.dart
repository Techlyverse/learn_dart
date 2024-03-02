import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learn_dart/ui/tutorial/tutorial_feed.dart';

class TutorialTab extends StatelessWidget {
  const TutorialTab({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return SingleChildScrollView(
      child: Column(
        children: [
          AppBar(
            title: const Text("Welcome"),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.notifications_outlined),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.settings_outlined),
              ),
            ],
          ),
          const SizedBox(height: 20),
          AspectRatio(
            aspectRatio: 21 / 9,
            child: Container(
              width: double.maxFinite,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: colorScheme.primaryContainer,
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
          const TutorialFeed(),
        ],
      ),
    );
  }
}
