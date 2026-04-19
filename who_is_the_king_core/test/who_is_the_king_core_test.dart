import 'dart:math';

import 'package:who_is_the_king_core/src/maps/base/wtk_map.dart';
import 'package:who_is_the_king_core/src/maps/base/map_object.dart';
import 'package:who_is_the_king_core/src/maps/base/brick.dart';
import 'package:test/test.dart';
import 'package:who_is_the_king_core/src/maps/dark_cellar.dart';

void main() {
  group('A group of tests', () {
    setUp(() {
      WtkMap gf = DarkCellar();
      _paintMap(gf);
    });

    test('First Test', () {});
  });
}

void _paintMap(WtkMap map) {
  for (int y = map.sizeY - 1; y >= 0; y--) {
    StringBuffer line = StringBuffer();
    for (int x = 0; x < map.sizeX; x++) {
      MapObject? obj = map.getObj(Point(x, y));
      if (obj == null) {
        line.write('• ');
      } else if (obj is Brick) {
        line.write('# ');
      }
    }
    print(line.toString());
  }
}
