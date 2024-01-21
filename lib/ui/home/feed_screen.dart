import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:learn_dart/ui/home/feed_tile.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({super.key, required this.snapshot});
  final QuerySnapshot snapshot;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        padding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 20,
        ),
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemCount: snapshot.docs.length,
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        itemBuilder: (_, index) {
          return FeedTile(
            key: Key(index.toString()),
            snapshot: snapshot.docs[index],
            index: index,
          );
        },
        separatorBuilder: (_, i) {
          return const Divider(
            height: 10,
            color: Colors.transparent,
          );
        });
  }
}
