import 'package:flutter/material.dart';
import '../../data/example_list.dart';
import 'example_tile.dart';

class ExampleFeed extends StatelessWidget {
  const ExampleFeed({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        padding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 20,
        ),
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemCount: exampleList.length,
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        itemBuilder: (_, index) {
          return ExampleTile(
            key: Key(index.toString()),
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
