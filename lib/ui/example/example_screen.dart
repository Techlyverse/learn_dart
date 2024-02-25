import 'package:flutter/material.dart';
import 'package:learn_dart/provider/example_provider.dart';
import 'package:provider/provider.dart';
import '../../data/example_list.dart';
import '../../widgets/code_viewer.dart';

class ExampleScreen extends StatelessWidget {
  const ExampleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Consumer<ExampleProvider>(builder: (context, provider, child) {
      return Scaffold(
        backgroundColor: colorScheme.surface,
        appBar: AppBar(title: Text(provider.currentExample.title)),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              Text(
                provider.currentExample.description,
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(
                height: 50,
                width: double.maxFinite,
              ),
              CodeViewer(program: provider.currentExample.program),
              const SizedBox(height: 50),
              navigationButton(context, provider),
              const SizedBox(height: 50),
            ],
          ),
        ),
      );
    });
  }

  Widget navigationButton(BuildContext context, ExampleProvider provider) {
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
          onPressed: provider.currentIndex < exampleList.length - 1
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
