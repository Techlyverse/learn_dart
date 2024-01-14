import 'package:flutter/material.dart';
import 'package:learn_dart/core/helper/syntax_helper.dart';
import 'package:syntax_highlight/syntax_highlight.dart';

class ExampleScreen extends StatelessWidget {
  const ExampleScreen({super.key});

  static const String myCode = '''void main(){print("Hello World");}''';

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return SizedBox();
  }
}
