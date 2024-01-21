import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:learn_dart/ui/home/description_screen.dart';

class FeedTile extends StatelessWidget {
  const FeedTile({super.key, required this.snapshot, required this.index});
  final DocumentSnapshot snapshot;
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
                builder: (context) => DescriptionScreen(snapshot: snapshot)));
      },
      leading: CircleAvatar(
        child: Text("$index"),
      ),
      title: Text(snapshot['title']),
    );
  }
}
