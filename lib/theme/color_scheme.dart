import 'package:flutter/material.dart';

const lightColorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: Color(0xff00A9FF),
  onPrimary: Color(0xffffffff),
  secondary: Color(0xffF875AA),
  onSecondary: Color(0xffffffff),
  tertiary: Color(0xffE26EE5),
  onTertiary: Color(0xffffffff),
  primaryContainer: Color(0xffCAEDFF),
  onPrimaryContainer: Color(0xff280274),
  secondaryContainer: Color(0xffF3CCF3),
  onSecondaryContainer: Color(0xff402B3A),
  tertiaryContainer: Color(0xffF1EAFF),
  onTertiaryContainer: Color(0xff181823),
  background: Color(0xffffffff),
  onBackground: Color(0xff161a1d),
  surface: Color(0xfff5f5f5),
  onSurface: Color(0xff030637),
  surfaceVariant: Color(0xffe3f2fd),
  onSurfaceVariant: Color(0xff212529),
  inverseSurface: Color(0xff030637),
  onInverseSurface: Color(0xfffafaff),
  error: Color(0xffB31312),
  onError: Color(0xffffffff),
);

final darkColorScheme = ColorScheme.fromSeed(
  seedColor: Colors.pink,
  primary: Colors.blue,
  secondary: Colors.lightBlue,
  tertiary: Colors.orange,
  brightness: Brightness.dark,
);
