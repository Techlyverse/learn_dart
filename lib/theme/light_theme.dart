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
      titleTextStyle: GoogleFonts.gluten(
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
      ),

    ),


    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
    ),
    // iconButtonTheme: IconButtonThemeData(
    //   style: IconButton.styleFrom(
    //     backgroundColor: lightColorScheme.tertiaryContainer,
    //   ),
    // ),
    navigationBarTheme: NavigationBarThemeData(
      elevation: 0,
      labelTextStyle: MaterialStatePropertyAll(GoogleFonts.gluten()),
      backgroundColor: lightColorScheme.tertiaryContainer,
      indicatorColor: lightColorScheme.primary,
    ),
    listTileTheme: ListTileThemeData(
      tileColor: lightColorScheme.secondaryContainer,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),
  );
}
