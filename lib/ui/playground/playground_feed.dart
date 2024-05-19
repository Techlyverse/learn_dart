import 'package:flutter/material.dart';
import 'package:learn_dart/data/playground_list.dart';
import 'package:learn_dart/ui/playground/playground_tile.dart';

class PlaygroundFeed extends StatelessWidget {
  const PlaygroundFeed({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        padding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 20,
        ),
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemCount: playgroundList.length,
        physics: const NeverScrollableScrollPhysics(),
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        itemBuilder: (_, index) => PlaygroundTile(index: index),
        separatorBuilder: (_, i) {
          return const Divider(height: 10, color: Colors.transparent);
        });
  }
}
