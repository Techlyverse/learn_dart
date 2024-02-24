import 'package:flutter/material.dart';
import 'package:learn_dart/model/example_model.dart';
import 'package:learn_dart/model/tutorial_model.dart';
import 'package:learn_dart/widgets/code_viewer.dart';

class ExampleTile extends StatelessWidget {
  const ExampleTile({super.key, required this.example, required this.index});
  final ExampleModel example;
  final int index;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return ListTile(
      tileColor: colorScheme.tertiaryContainer,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => CodeViewer(program: example.program)));
      },
      leading: CircleAvatar(
        child: Text("$index"),
      ),
      title: Text(example.title),
    );
  }
}
