import 'package:flutter/material.dart';
import 'package:learn_dart/provider/example_provider.dart';

import 'package:learn_dart/ui/example/example_feed.dart';
import 'package:provider/provider.dart';



class ExampleTab extends StatefulWidget {
  const ExampleTab({super.key});
  

  @override
  State<ExampleTab> createState() => _ExampleTabState();
}

class _ExampleTabState extends State<ExampleTab> {
  int selectedTopicIndex = 0;
  String? searchQuery;
  

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final exampleProvider = Provider.of<ExampleProvider>(context);

    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            AppBar(title: const Text("Examples")),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextField(
                onChanged: (value) {
                  setState(() {
                  searchQuery = value.toLowerCase(); // Make search case-insensitive
  });
                },
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 8),
                  prefixIcon: Icon(Icons.search),
                  hintText: "Search examples",
                  hintStyle: TextStyle(fontSize: 14),
                ),
              ),
            ),
            SizedBox(
              height: 50,
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 6,
                  itemBuilder: (_, index) {

                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: ChoiceChip(
                        selectedColor: colorScheme.primary,
                        checkmarkColor: selectedTopicIndex == index
                            ? colorScheme.onPrimary
                            : colorScheme.onSurface,
                        labelStyle: TextStyle(
                            color: selectedTopicIndex == index
                                ? colorScheme.onPrimary
                                : colorScheme.onSurface),
                        label: Text("Button $index"),
                        selected: selectedTopicIndex == index,
                        onSelected: (isSelected) {
                          if (isSelected) {
                            setState(() {
                              selectedTopicIndex = index;
                            });

                          }
                          exampleProvider.search("Basic");
                        },
                      ),
                    );
                  }),
            ),
            ExampleFeed()
          ],
        ),
      ),
      
    );
   
  }
}
//exampleProvider.applyFilter("type1");
