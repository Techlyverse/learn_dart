import 'package:flutter/material.dart';
import 'package:learn_dart/model/tutorial_model.dart';
import 'tutorial_tile.dart';

class TutorialFeed extends StatelessWidget {
  const TutorialFeed({super.key, required this.tutorials});
  final List<TutorialModel> tutorials;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        padding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 20,
        ),
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemCount: tutorials.length,
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        itemBuilder: (_, index) {
          return TutorialTile(
            key: Key(index.toString()),
            tutorial: tutorials[index],
            index: index,
          );
        },
        separatorBuilder: (_, i) {
          return const Divider(
            height: 10,
            color: Colors.transparent,
          );
        });
  }
}
