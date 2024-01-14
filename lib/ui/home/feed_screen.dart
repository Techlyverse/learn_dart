import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:learn_dart/ui/home/feed_tile.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({super.key, required this.snapshot});
  final QuerySnapshot snapshot;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemCount: snapshot.docs.length,
        itemBuilder: (_, index) {
          return FeedTile(snapshot: snapshot.docs[index], index: index);
        },
        separatorBuilder: (_, i) {
          return const Divider();
        });
  }
}
