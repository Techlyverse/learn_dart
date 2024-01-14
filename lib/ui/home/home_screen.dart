import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:learn_dart/ui/home/feed_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedTopicIndex = 0;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
              onChanged: (value) {},
              decoration: InputDecoration(
                filled: true,
                fillColor: colorScheme.onInverseSurface,
                prefixIcon: const Icon(Icons.search),
                hintText: "Search for examples",
                hintStyle: const TextStyle(fontSize: 14),
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
                      },
                    ),
                  );
                }),
          ),
          const SizedBox(height: 10),
          const Divider(),
          Expanded(
            child: StreamBuilder<QuerySnapshot>(
                stream: FirebaseFirestore.instance
                    .collection("programs")
                    .snapshots(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(child: CircularProgressIndicator());
                  } else if (snapshot.hasError) {
                    return const Center(child: Text("Error"));
                  } else if (snapshot.data != null) {
                    return FeedScreen(snapshot: snapshot.data!);
                  } else {
                    return const Center(child: Text("No data found"));
                  }
                }),
          ),
        ],
      ),
    );
  }
}
