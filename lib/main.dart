import 'package:flutter/material.dart';
import 'package:learn_dart/helper/syntax_helper.dart';
import 'package:learn_dart/helper/ui_helper.dart';
import 'app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  UIHelper.setUIStyle();
  SyntaxHelper.initHighlighter();
  runApp(const MyApp());
}
