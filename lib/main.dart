import 'package:flutter/material.dart';
import 'package:learn_dart/data/database.dart';
import 'package:learn_dart/firebase_options.dart';
import 'helper/syntax_helper.dart';
import 'helper/ui_helper.dart';
import 'app.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  UIHelper.setUIStyle();
  SyntaxHelper.initHighlighter();
  final dbInstance = SembastDatabase();
  await dbInstance.initDb();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}
