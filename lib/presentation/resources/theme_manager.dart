import 'package:flutter/material.dart';

import 'value_manager.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    brightness: Brightness.dark,
    useMaterial3: true,
    colorSchemeSeed: Colors.pink,
    cardTheme: CardTheme(
      elevation: AppSize.s8,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSize.s14),
      ),
    ),
    // button theme
    buttonTheme: ButtonThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSize.s8),
      ),
    ),
    // text theme
    // textTheme: GoogleFonts.latoTextTheme(),
    // input decoration theme
    inputDecorationTheme: const InputDecorationTheme(
      border: OutlineInputBorder(),
    ),
  );
}
