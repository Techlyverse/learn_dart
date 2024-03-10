import 'package:flutter/material.dart';
import '../../data/example_list.dart';
import 'example_tile.dart';

class ExampleFeed extends StatelessWidget {
  const ExampleFeed({super.key, required this.selectedType});
  final String selectedType;

  @override
  Widget build(BuildContext context) {
    final filteredList = selectedType.isEmpty
        ? exampleList
        : exampleList.where((example) => example.type == selectedType).toList();

    return ListView.separated(
        padding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 20,
        ),
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemCount: filteredList.length,
        physics: const NeverScrollableScrollPhysics(),
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        itemBuilder: (_, index) => ExampleTile(
              index: index,
              examples: filteredList,
            ),
        separatorBuilder: (_, i) {
          return const Divider(height: 10, color: Colors.transparent);
        });
  }
}
