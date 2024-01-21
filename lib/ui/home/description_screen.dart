import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../core/helper/syntax_helper.dart';

class DescriptionScreen extends StatelessWidget {
  const DescriptionScreen({super.key, required this.snapshot});
  final DocumentSnapshot snapshot;

  @override
  Widget build(BuildContext context) {
    final bool isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      body: FutureBuilder<InlineSpan>(
          future: SyntaxHelper.getHighlighter(isDarkMode, snapshot['code']),
          builder: (context, highlighter) {
            if (highlighter.data != null) {
              return Center(
                child: Text.rich(
                  highlighter.data!,
                  style: GoogleFonts.sourceCodePro(),
                ),
              );
            } else {
              return const SizedBox();
            }
          }),
    );
  }
}
