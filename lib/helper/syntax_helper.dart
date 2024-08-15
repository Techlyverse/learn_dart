import 'package:dart_style/dart_style.dart';
import 'package:flutter/material.dart';
import 'package:syntax_highlight/syntax_highlight.dart';

class SyntaxHelper {
  static final _formatter = DartFormatter();
  static const String _language = 'dart';

  static Future<void> initHighlighter() async {
    await Highlighter.initialize(['dart']);
  }

  static Future<InlineSpan> getHighlighter(bool isDarkMode, String code) async {
    final Highlighter highlighter = Highlighter(
      language: _language,
      theme: isDarkMode
          ? await HighlighterTheme.loadDarkTheme()
          : await HighlighterTheme.loadLightTheme(),
    );

    String formattedCode = _formatter.format(code);
    return highlighter.highlight(formattedCode);
  }
}
