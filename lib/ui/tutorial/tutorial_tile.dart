import 'package:flutter/material.dart';
import 'package:learn_dart/data/tutorial_list.dart';
import 'package:learn_dart/provider/tutorial_provider.dart';
import 'package:provider/provider.dart';

class TutorialTile extends StatelessWidget {
  const TutorialTile({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return Consumer<TutorialProvider>(builder: (context, provider, child) {
      return ListTile(
        selected:  provider.currentIndex == index,
        onTap: () => provider.openTutorial(context: context, index: index),
        leading: CircleAvatar(child: Text("$index")),
        title: Text(tutorialList[index].title),
      );
    });
  }
}
