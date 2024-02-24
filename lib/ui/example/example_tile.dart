import 'package:flutter/material.dart';
import 'package:learn_dart/ui/example/example_screen.dart';

import '../../data/example_list.dart';

class ExampleTile extends StatelessWidget {
  const ExampleTile({super.key, required this.index});

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
                builder: (context) => ExampleScreen(index: index)));
      },
      leading: CircleAvatar(
        child: Text("$index"),
      ),
      title: Text(exampleList[index].title),
    );
  }
}
