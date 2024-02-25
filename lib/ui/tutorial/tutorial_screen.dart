import 'package:flutter/material.dart';
import 'package:learn_dart/widgets/markdown_viewer.dart';
import '../../data/tutorial_list.dart';

class TutorialScreen extends StatelessWidget {
  const TutorialScreen({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(tutorialList[index].title)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            Text(
              tutorialList[index].description,
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(
              height: 50,
              width: double.maxFinite,
            ),
            MarkdownViewer(fileName: tutorialList[index].fileName),
            const SizedBox(height: 50),
            navigationButton(),
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
  }

  Widget navigationButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ElevatedButton(
          onPressed: index > 0 ? () {} : null,
          child: const Row(
            children: [
              Icon(Icons.arrow_back, size: 20),
              SizedBox(width: 6),
              Text("Previous"),
            ],
          ),
        ),
        ElevatedButton(
          onPressed: index < tutorialList.length - 1 ? () {} : null,
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
