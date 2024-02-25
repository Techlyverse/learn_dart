import 'package:flutter/material.dart';
import 'package:learn_dart/constant/app_constant.dart';
import 'package:learn_dart/data/tutorial_list.dart';
import 'package:learn_dart/provider/tutorial_provider.dart';
import 'package:learn_dart/ui/tutorial/tutorial_screen.dart';
import 'package:provider/provider.dart';

class TutorialTile extends StatelessWidget {
  const TutorialTile({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    final bool isMobile = MediaQuery.of(context).size.width < AppConstant.smallBreakPoint;
    return Consumer<TutorialProvider>(builder: (context, provider, child) {
      return ListTile(
        selected:  provider.currentIndex == index,
        onTap: () => provider.openTutorial(context: context),
        leading: CircleAvatar(child: Text("$index")),
        title: Text(tutorialList[index].title),
      );
    });
  }
}
