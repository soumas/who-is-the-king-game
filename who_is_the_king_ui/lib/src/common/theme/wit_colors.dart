import 'package:flutter/material.dart';

class WitColors {
  WitColors({required this.bg, required this.listTileBg});

  final Color bg;
  final Color listTileBg;

  static WitColors of(BuildContext context) {
    final brightness = MediaQuery.of(context).platformBrightness;
    return brightness == Brightness.dark ? colorsDark : colorsLight;
  }
}

final colorsLight = WitColors(
  bg: Colors.white,
  listTileBg: Colors.black.withAlpha(128),
);

final colorsDark = WitColors(
  bg: Colors.black,
  listTileBg: Colors.black.withAlpha(128),
);
