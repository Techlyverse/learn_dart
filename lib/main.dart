import 'package:flutter/material.dart';
import 'helper/syntax_helper.dart';
import 'helper/ui_helper.dart';
import 'app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  UIHelper.setUIStyle();
  SyntaxHelper.initHighlighter();
  runApp(const MyApp());
}
