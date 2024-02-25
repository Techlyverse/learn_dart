import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class MarkdownViewer extends StatelessWidget {
  const MarkdownViewer({super.key, required this.fileName});
  final String fileName;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: DefaultAssetBundle.of(context)
            .loadString("assets/tutorials/$fileName"),
        builder: (context, snapshot) {
          if (snapshot.data != null) {
            return MarkdownBody(data: snapshot.data!);
          } else {
            return const SizedBox();
          }
        });
  }
}
