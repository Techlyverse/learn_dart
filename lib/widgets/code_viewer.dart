import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../helper/syntax_helper.dart';

class CodeViewer extends StatelessWidget {
  const CodeViewer({super.key, required this.program});
  final String program;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final bool isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Container(
      width: double.maxFinite,
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 12,
      ),
      decoration: BoxDecoration(
        color: colorScheme.onInverseSurface,
        border: Border.all(
          width: 0.5,
          color: colorScheme.onBackground,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: FutureBuilder<InlineSpan>(
          future: SyntaxHelper.getHighlighter(isDarkMode, program),
          builder: (context, highlighter) {
            if (highlighter.data != null) {
              return Text.rich(
                highlighter.data!,
                style: GoogleFonts.robotoMono(),
              );
            } else {
              return const SizedBox();
            }
          }),
    );
  }
}
