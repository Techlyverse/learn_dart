import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:learn_dart/core/helper/firebase_appcheck.dart';
import 'package:learn_dart/core/helper/firebase_crashlytics.dart';
import 'package:learn_dart/core/helper/syntax_helper.dart';
import 'package:learn_dart/core/helper/ui_style.dart';
import 'firebase_options.dart';
import 'app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  initCrashlytics();
  appCheck();
  setUIStyle();
  SyntaxHelper.initHighlighter();
  runApp(const MyApp());
}
