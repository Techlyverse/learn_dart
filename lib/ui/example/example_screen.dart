import 'package:flutter/material.dart';
import 'package:learn_dart/model/example_model.dart';
import '../../widgets/code_viewer.dart';

class ExampleScreen extends StatelessWidget {
  const ExampleScreen({super.key, required this.example});
  final ExampleModel example;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(example.title)),
      body: Column(
        children: [
          const SizedBox(height: 30),
          Text(example.subtitle),
          const SizedBox(height: 30),
          CodeViewer(program: example.program),
        ],
      ),
    );
  }
}
