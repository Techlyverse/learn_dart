import 'package:flutter/material.dart';
import 'package:learn_dart/widgets/markdown_viewer.dart';
import 'package:provider/provider.dart';
import '../../data/tutorial_list.dart';
import '../../provider/tutorial_provider.dart';

class TutorialScreen extends StatelessWidget {
  const TutorialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TutorialProvider>(builder: (context, provider, child) {
      return Scaffold(
        appBar: AppBar(title: Text(provider.currentTutorial.title)),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              Text(
                provider.currentTutorial.description,
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(
                height: 50,
                width: double.maxFinite,
              ),
              MarkdownViewer(fileName: provider.currentTutorial.fileName),
              const SizedBox(height: 50),
              navigationButton(provider),
              const SizedBox(height: 50),
              Container(
                height: 200,
                width: double.maxFinite,
                color: Colors.grey.shade300,
              ),
              const SizedBox(height: 50),
            ],
          ),
        ),
      );
    });
  }

  Widget navigationButton(TutorialProvider provider) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ElevatedButton(
          onPressed: provider.currentIndex > 0 ? () {provider.updateIndex(provider.currentIndex -1);} : null,
          child: const Row(
            children: [
              Icon(Icons.arrow_back, size: 20),
              SizedBox(width: 6),
              Text("Previous"),
            ],
          ),
        ),
        ElevatedButton(
          onPressed: provider.currentIndex < tutorialList.length - 1 ? () {provider.updateIndex(provider.currentIndex+1);} : null,
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
