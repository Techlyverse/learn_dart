import 'package:flutter/material.dart';

class TutorialTab extends StatefulWidget {
  const TutorialTab({super.key});

  @override
  State<TutorialTab> createState() => _TutorialTabState();
}

class _TutorialTabState extends State<TutorialTab> {
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final width = MediaQuery.of(context).size.width - 40;

    return SingleChildScrollView(
      child: Column(
        children: [
          AppBar(
            leading: const Padding(
              padding: EdgeInsets.all(6.0),
              child: CircleAvatar(),
            ),
            title: const Text("Welcome"),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.notifications_outlined),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.settings_outlined),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
