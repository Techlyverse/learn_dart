import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class MarkdownViewer extends StatelessWidget {
  const MarkdownViewer({super.key, required this.data});
  final String data;

  @override
  Widget build(BuildContext context) {
    return MarkdownBody(data: data);
  }
}
