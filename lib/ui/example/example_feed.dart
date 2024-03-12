import 'package:flutter/material.dart';
import 'package:learn_dart/provider/example_provider.dart';
import 'package:provider/provider.dart';
import '../../data/example_list.dart';
import 'example_tile.dart';

class ExampleFeed extends StatelessWidget {
  const ExampleFeed({super.key, required this.selectedType});
  final String selectedType;
   final String searched="";
  @override
  Widget build(BuildContext context) {
    final filteredList = selectedType.isEmpty
        ? exampleList
        : exampleList.where((example) => example.type == selectedType).toList();
    final searchList = searched.isEmpty
      ? exampleList
      : exampleList.where((example) => example.type == searched).toList();   

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
        itemBuilder: (_, index) =>
         ExampleTile(
              index: index,
              examples: Provider.of<ExampleProvider>(context).searchList.isNotEmpty
      ? Provider.of<ExampleProvider>(context).searchList
      : filteredList,
            ),
        separatorBuilder: (_, i) {
          return const Divider(height: 10, color: Colors.transparent);
        });
  }
}
