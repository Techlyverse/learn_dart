import 'package:flutter/material.dart';
import 'package:learn_dart/ui/example/example_feed.dart';

class ExampleTab extends StatefulWidget {
  const ExampleTab({super.key});

  @override
  State<ExampleTab> createState() => _ExampleTabState();
}

class _ExampleTabState extends State<ExampleTab> {
  int selectedTopicIndex = 0;
  String? selecteTopic;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            AppBar(title: const Text("Examples")),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextField(
                onChanged: (value) {},
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
                  itemCount: 2, // Number of types
                  itemBuilder: (_, index) {
                    String chipLabel =
                        index == 0 ? "Basic" : "Control Flow statements";
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
                        label: Text(chipLabel),
                        selected: selectedTopicIndex == index,
                        onSelected: (isSelected) {
                          if (isSelected) {
                            setState(() {
                              selectedTopicIndex = index;
                              selecteTopic = index == 0
                                  ? "Basic"
                                  : "Control Flow statements";
                            });
                          }
                        },
                      ),
                    );
                  }),
            ),
            ExampleFeed(selectedType: selecteTopic ?? "")
          ],
        ),
      ),
    );
  }
}
