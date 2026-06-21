import 'package:flutter/material.dart';

class WitColors {
  WitColors({required this.bg});

  final Color bg;

  static WitColors of(BuildContext context) {
    final brightness = MediaQuery.of(context).platformBrightness;
    return brightness == Brightness.dark ? colorsDark : colorsLight;
  }
}

final colorsLight = WitColors(bg: Colors.white);

final colorsDark = WitColors(bg: Colors.black);
