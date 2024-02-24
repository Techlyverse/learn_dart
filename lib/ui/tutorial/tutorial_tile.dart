import 'package:flutter/material.dart';
import 'package:learn_dart/data/tutorial_list.dart';
import 'package:learn_dart/ui/tutorial/tutorial_screen.dart';

class TutorialTile extends StatelessWidget {
  const TutorialTile({super.key, required this.index});
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
                builder: (context) => TutorialScreen(index: index)));
      },
      leading: CircleAvatar(child: Text("$index")),
      title: Text(tutorialList[index].title),
    );
  }
}
