import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'data/provider_list.dart';
import 'theme/dark_theme.dart';
import 'theme/light_theme.dart';
import 'ui/onboarding/onboarding.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: listProviders,
      child: MaterialApp(
        theme: lightTheme(),
        darkTheme: darkTheme(),
        themeMode: ThemeMode.light,
        home:  OnBoardingUI(),
      ),
    );
  }
}
