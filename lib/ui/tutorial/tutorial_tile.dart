import 'package:flutter/material.dart';
import 'package:learn_dart/model/tutorial_model.dart';
import 'package:learn_dart/widgets/code_viewer.dart';

class TutorialTile extends StatelessWidget {
  const TutorialTile({super.key, required this.tutorial, required this.index});
  final TutorialModel tutorial;
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
                builder: (context) => CodeViewer(program: tutorial.program)));
      },
      leading: CircleAvatar(
        child: Text("$index"),
      ),
      title: Text(tutorial.title),
    );
  }
}
