import 'dart:math';

import 'package:who_is_the_king_core/src/gamefield/gamefield.dart';
import 'package:who_is_the_king_core/src/gamefield/objects/base/character.dart';
import 'package:who_is_the_king_core/src/gamefield/objects/base/gamefield_object.dart';
import 'package:who_is_the_king_core/src/gamefield/objects/base/oriented_gamefield_object.dart';
import 'package:who_is_the_king_core/src/gamefield/objects/brick.dart';
import 'package:who_is_the_king_core/src/gamefield/objects/characters/kib.dart';
import 'package:who_is_the_king_core/who_is_the_king_core.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests', () {
    final awesome = Awesome();

    setUp(() {
      Gamefield gf = Gamefield(sizeX: 14, sizeY: 10);
      gf.addObj(Brick(position: Point(1, 1)));
      gf.addObj(Brick(position: Point(2, 1)));
      gf.addObj(Brick(position: Point(3, 1)));
      gf.addObj(Brick(position: Point(4, 1)));
      gf.addObj(Brick(position: Point(4, 2)));
      gf.addObj(Brick(position: Point(1, 2)));
      gf.addObj(Brick(position: Point(6, 1)));
      gf.addObj(Brick(position: Point(6, 2)));
      gf.addObj(Brick(position: Point(6, 3)));
      gf.addObj(Brick(position: Point(8, 1)));
      gf.addObj(Brick(position: Point(8, 2)));
      gf.addObj(Brick(position: Point(8, 3)));
      gf.addObj(Brick(position: Point(9, 1)));
      gf.addObj(Brick(position: Point(11, 2)));
      gf.addObj(Brick(position: Point(11, 3)));
      gf.addObj(Brick(position: Point(11, 4)));
      gf.addObj(Brick(position: Point(11, 5)));
      gf.addObj(Brick(position: Point(12, 2)));
      gf.addObj(Brick(position: Point(12, 3)));
      gf.addObj(Brick(position: Point(12, 4)));
      gf.addObj(Brick(position: Point(12, 5)));
      gf.addObj(Brick(position: Point(12, 8)));
      gf.addObj(Brick(position: Point(11, 8)));
      gf.addObj(Brick(position: Point(10, 8)));
      gf.addObj(Brick(position: Point(7, 8)));
      gf.addObj(Brick(position: Point(7, 7)));
      gf.addObj(Brick(position: Point(7, 5)));
      gf.addObj(Brick(position: Point(8, 5)));
      gf.addObj(Brick(position: Point(9, 5)));
      gf.addObj(Brick(position: Point(3, 4)));
      gf.addObj(Brick(position: Point(3, 5)));
      gf.addObj(Brick(position: Point(3, 6)));
      gf.addObj(Brick(position: Point(3, 7)));
      gf.addObj(Brick(position: Point(4, 7)));
      gf.addObj(Brick(position: Point(5, 7)));
      gf.addObj(Brick(position: Point(1, 5)));
      gf.addObj(Brick(position: Point(1, 6)));
      gf.addObj(Brick(position: Point(1, 7)));
      gf.addObj(Brick(position: Point(1, 8)));
      gf.addObj(Kib(position: Point(0, 0), orientation: Orientation.north));
      _paintGamefield(gf);
    });

    test('First Test', () {
      expect(awesome.isAwesome, isTrue);
    });
  });
}

void _paintGamefield(Gamefield gamefield) {
  for (int y = gamefield.sizeY - 1; y >= 0; y--) {
    StringBuffer line = StringBuffer();
    for (int x = 0; x < gamefield.sizeX; x++) {
      GamefieldObject? obj = gamefield.getObj(position: Point(x, y));
      if (obj == null) {
        line.write('• ');
      } else if (obj is Character) {
        line.write('${obj.name[0]} ');
      } else if (obj is Brick) {
        line.write('# ');
      }
    }
    print(line.toString());
  }
}
