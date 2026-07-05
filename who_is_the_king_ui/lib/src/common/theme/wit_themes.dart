import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:who_is_the_king_ui/src/common/theme/wit_colors.dart';
import 'package:who_is_the_king_ui/src/common/theme/wit_page_transition_builder.dart';

ThemeData buildThemeData(Brightness brightness, WitColors c) {
  return ThemeData(
    brightness: brightness,
    scaffoldBackgroundColor: c.bg,
    pageTransitionsTheme: PageTransitionsTheme(
      builders: {
        TargetPlatform.android: WitPageTransitionBuilder(),
        TargetPlatform.fuchsia: WitPageTransitionBuilder(),
        TargetPlatform.iOS: WitPageTransitionBuilder(),
        TargetPlatform.linux: WitPageTransitionBuilder(),
        TargetPlatform.macOS: WitPageTransitionBuilder(),
        TargetPlatform.windows: WitPageTransitionBuilder(),
      },
    ),
    textTheme: GoogleFonts.newRockerTextTheme(
      ThemeData(brightness: brightness).textTheme,
    ),
    listTileTheme: ListTileThemeData(tileColor: c.listTileBg),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(Colors.black.withAlpha(164)),
      ),
    ),
  );
}

final ThemeData witThemeLight = buildThemeData(Brightness.light, colorsLight);
final ThemeData witThemeDark = buildThemeData(Brightness.dark, colorsDark);
