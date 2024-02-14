import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:learn_dart/ui/home/carousel.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
