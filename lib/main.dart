import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:learn_dart/core/helper/syntax_helper.dart';
import 'package:learn_dart/core/helper/ui_style.dart';
import 'package:learn_dart/core/theme/dark_theme.dart';
import 'package:learn_dart/core/theme/light_theme.dart';
import 'package:learn_dart/provider/leadershiprovider.dart';
import 'package:learn_dart/ui/main_screen.dart';
import 'package:provider/provider.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  setUIStyle();
  SyntaxHelper.initHighlighter();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context)=> LeadershipProvider())
      ],
      child: MaterialApp(
        theme: lightTheme(),
        darkTheme: darkTheme(),
        themeMode: ThemeMode.system,
        home: const MainScreen(),
      ),
    );
  }
}
