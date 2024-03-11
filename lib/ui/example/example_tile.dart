import 'package:flutter/material.dart';
import 'package:learn_dart/provider/example_provider.dart';
import 'package:provider/provider.dart';
import '../../data/example_list.dart';

class ExampleTile extends StatelessWidget {
  const ExampleTile({super.key, required this.index,required this.examplestring});
  final int index;
  final String examplestring;

  @override
  Widget build(BuildContext context) {
    return Consumer<ExampleProvider>(
      builder: (context, provider, child) {
        return ListTile(
          selected: provider.currentIndex == index,
          onTap: () => provider.openExample(context: context, index: index),
          leading: CircleAvatar(child: Text("${index + 1}")),
          title: Text(exampleList[index].title),
          //subtitle: Text(exampleList[index].description),
        );
      },
    );
  }
}
