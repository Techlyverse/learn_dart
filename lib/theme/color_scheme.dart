import 'package:flutter/material.dart';

const lightColorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: Color(0xff00A9FF),
  onPrimary: Color(0xffffffff),
  primaryContainer: Color(0xffCAEDFF),
  onPrimaryContainer: Color(0xff280274),
  secondary: Color(0xffF875AA),
  onSecondary: Color(0xffffffff),
  secondaryContainer: Color(0xffF3CCF3),
  onSecondaryContainer: Color(0xff402B3A),
  tertiary: Color(0xffE26EE5),
  onTertiary: Color(0xffffffff),
  tertiaryContainer: Color(0xffF1EAFF),
  onTertiaryContainer: Color(0xff181823),
  surfaceVariant: Color(0xffF8E8EE),
  error: Color(0xffB31312),
  onError: Color(0xffffffff),
  background: Color(0xffF3F8FF),
  onBackground: Color(0xffB6BBC4),
  surface: Color(0xffF5F7F8),
  onSurface: Color(0xff030637),
);

final darkColorScheme = ColorScheme.fromSeed(
  seedColor: Colors.pink,
  primary: Colors.blue,
  secondary: Colors.lightBlue,
  tertiary: Colors.orange,
  brightness: Brightness.dark,
);
