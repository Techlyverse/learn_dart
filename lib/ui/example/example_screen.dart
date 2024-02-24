import 'package:flutter/material.dart';
import '../../data/example_list.dart';
import '../../widgets/code_viewer.dart';

class ExampleScreen extends StatelessWidget {
  const ExampleScreen({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(exampleList[index].title)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            Text(
              exampleList[index].description,
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 30),
            CodeViewer(program: exampleList[index].program),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
