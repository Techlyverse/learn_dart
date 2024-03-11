import 'package:flutter/material.dart';
import 'package:learn_dart/provider/example_provider.dart';
import 'package:provider/provider.dart';
import '../../data/example_list.dart';
import 'example_tile.dart';

class ExampleFeed extends StatelessWidget {
   ExampleFeed({super.key});
  
  @override
  Widget build(BuildContext context) {
    final exampleProvider=Provider.of<ExampleProvider>(context);
    return ListView.separated(
        padding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 20,
        ),
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemCount: exampleProvider.examplelist.length,
        physics: const NeverScrollableScrollPhysics(),
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        itemBuilder: (_, index) {
          final  name=exampleProvider.examplelist[index];
           ExampleTile(index: index,examplestring: name.title);
         
        },
        separatorBuilder: (_, i) {
          return const Divider(height: 10, color: Colors.transparent);
        });
  }
}
