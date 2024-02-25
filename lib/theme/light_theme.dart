import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'color_scheme.dart';

ThemeData lightTheme() {
  return ThemeData.light().copyWith(
    textTheme: GoogleFonts.ubuntuTextTheme(),
    colorScheme: lightColorScheme,
    appBarTheme: AppBarTheme(
      elevation: 0,
      surfaceTintColor: Colors.transparent,
      backgroundColor: Colors.transparent,
      titleTextStyle: GoogleFonts.aBeeZee(
        fontSize: 20,
        color: Colors.black,
      ),
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: lightColorScheme.primary,
        foregroundColor: lightColorScheme.onPrimary,
        side: BorderSide.none,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        backgroundColor: lightColorScheme.onInverseSurface,
        foregroundColor: lightColorScheme.inverseSurface,
        side: const BorderSide(width: 0.2),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(8.0)),
    ),
    navigationBarTheme: NavigationBarThemeData(
      elevation: 0,
      labelTextStyle: MaterialStatePropertyAll(GoogleFonts.gluten()),
      backgroundColor: lightColorScheme.tertiaryContainer,
      indicatorColor: lightColorScheme.primary,
    ),
    navigationRailTheme: NavigationRailThemeData(
      //elevation: 0,
      selectedLabelTextStyle:
          GoogleFonts.gluten(color: lightColorScheme.primary),
      unselectedLabelTextStyle:
          GoogleFonts.gluten(color: lightColorScheme.onSurface),
      backgroundColor: lightColorScheme.tertiaryContainer,
      indicatorColor: lightColorScheme.primary,
    ),
    listTileTheme: ListTileThemeData(
      tileColor: lightColorScheme.surfaceVariant,
      selectedColor: lightColorScheme.onSecondaryContainer,
      selectedTileColor: lightColorScheme.secondaryContainer,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),
  );
}
