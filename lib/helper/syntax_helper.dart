import 'package:dart_style/dart_style.dart';
import 'package:flutter/material.dart';
import 'package:syntax_highlight/syntax_highlight.dart';

class SyntaxHelper {
  static Future<void> initHighlighter() async {
    // Initialize the highlighter.
    await Highlighter.initialize(['dart', 'yaml', 'sql']);
  }

  static Future<InlineSpan> getHighlighter(bool isDarkMode, String code) async {
    final formatter = DartFormatter();
    const String language = 'dart';

    final Highlighter highlighter = Highlighter(
      language: language,
      theme: isDarkMode
          ? await HighlighterTheme.loadDarkTheme()
          : await HighlighterTheme.loadLightTheme(),
    );

    String formattedCode = formatter.format(code);
    return highlighter.highlight(formattedCode);
  }
}
