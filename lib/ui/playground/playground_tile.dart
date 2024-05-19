import 'package:flutter/material.dart';
import 'package:learn_dart/data/playground_list.dart';
import 'package:learn_dart/provider/playground_provider.dart';
import 'package:provider/provider.dart';

class PlaygroundTile extends StatelessWidget {
  const PlaygroundTile({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return Consumer<PlaygroundProvider>(builder: (context, provider, child) {
      return ListTile(
        selected:  provider.currentIndex == index,
        onTap: () => provider.openPlayground(context: context, index: index),
        leading: CircleAvatar(child: Text("$index")),
        title: Text(playgroundList[index].title),
      );
    });
  }
}
