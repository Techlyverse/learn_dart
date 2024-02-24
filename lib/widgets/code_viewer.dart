import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../helper/syntax_helper.dart';

class CodeViewer extends StatelessWidget {
  const CodeViewer({super.key, required this.program});
  final String program;

  @override
  Widget build(BuildContext context) {
    final bool isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      body: FutureBuilder<InlineSpan>(
          future: SyntaxHelper.getHighlighter(isDarkMode, program),
          builder: (context, highlighter) {
            if (highlighter.data != null) {
              return Center(
                child: Text.rich(
                  highlighter.data!,
                  style: GoogleFonts.sourceCodePro(fontSize: 16),
                ),
              );
            } else {
              return const SizedBox();
            }
          }),
    );
  }
}
