import 'package:flutter/material.dart';
import 'package:flutter_turtle/flutter_turtle.dart';

import 'package:learn_dart/provider/playground_provider.dart';
import 'package:provider/provider.dart';
import '../../data/tutorial_list.dart';

class PlaygroundScreen extends StatelessWidget {
  const PlaygroundScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Consumer<PlaygroundProvider>(builder: (context, provider, child) {
      return Scaffold(
        backgroundColor: colorScheme.surface,
        appBar: AppBar(title: Text(provider.currentPlayground.title)),
        body: Center(
          child: AnimatedTurtleView(
            animationDuration: const Duration(seconds: 1),
            commands: provider.currentPlayground.commands,
          ),
        ),
      );
    });
  }

  Widget navigationButton(PlaygroundProvider provider) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ElevatedButton(
          onPressed: provider.currentIndex > 0
              ? () {
                  provider.updateIndex(provider.currentIndex - 1);
                }
              : null,
          child: const Row(
            children: [
              Icon(Icons.arrow_back, size: 20),
              SizedBox(width: 6),
              Text("Previous"),
            ],
          ),
        ),
        ElevatedButton(
          onPressed: provider.currentIndex < tutorialList.length - 1
              ? () {
                  provider.updateIndex(provider.currentIndex + 1);
                }
              : null,
          child: const Row(
            children: [
              Text("Next"),
              SizedBox(width: 6),
              Icon(Icons.arrow_forward, size: 20),
            ],
          ),
        ),
      ],
    );
  }
}
