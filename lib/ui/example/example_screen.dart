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
            const SizedBox(
              height: 50,
              width: double.maxFinite,
            ),
            CodeViewer(program: exampleList[index].program),
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
          onPressed: index < exampleList.length - 1 ? () {} : null,
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
