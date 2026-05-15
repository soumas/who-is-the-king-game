import 'dart:math';

import 'package:who_is_the_king_core/src/maps/base/brick.dart';
import 'package:who_is_the_king_core/src/maps/base/map_object.dart';
import 'package:who_is_the_king_core/who_is_the_king_core.dart';

class Prison extends WtkMap {
  @override
  String get name => 'Prison';

  @override
  String get description =>
      'Schlachtfeld im Gefängnis des Schlosses. Es bietet viele Deckungen und es ist ein sehr großes Spielfeld.';

  @override
  int get numPlayersMax => 8;

  @override
  int get numPlayersMin => 2;

  @override
  int get sizeX => 15;

  @override
  int get sizeY => 19;

  @override
  List<MapObject> get staticObjects => [
    Brick(position: Point(0, 0)),
    Brick(position: Point(1, 0)),
    Brick(position: Point(2, 0)),
    Brick(position: Point(3, 0)),
    Brick(position: Point(4, 0)),
    Brick(position: Point(4, 1)),
    Brick(position: Point(4, 3)),
    Brick(position: Point(4, 4)),
    Brick(position: Point(3, 4)),
    Brick(position: Point(2, 4)),
    Brick(position: Point(0, 4)),
    Brick(position: Point(0, 3)),
    Brick(position: Point(0, 2)),
    Brick(position: Point(0, 1)),
    Brick(position: Point(6, 0)),
    Brick(position: Point(8, 0)),
    Brick(position: Point(10, 1)),
    Brick(position: Point(10, 0)),
    Brick(position: Point(11, 0)),
    Brick(position: Point(12, 0)),
    Brick(position: Point(13, 0)),
    Brick(position: Point(14, 0)),
    Brick(position: Point(14, 1)),
    Brick(position: Point(14, 2)),
    Brick(position: Point(14, 3)),
    Brick(position: Point(14, 4)),
    Brick(position: Point(13, 4)),
    Brick(position: Point(12, 4)),
    Brick(position: Point(11, 4)),
    Brick(position: Point(10, 4)),
    Brick(position: Point(10, 3)),
    Brick(position: Point(4, 7)),
    Brick(position: Point(4, 6)),
    Brick(position: Point(3, 6)),
    Brick(position: Point(3, 6)),
    Brick(position: Point(2, 6)),
    Brick(position: Point(1, 6)),
    Brick(position: Point(0, 6)),
    Brick(position: Point(0, 7)),
    Brick(position: Point(0, 8)),
    Brick(position: Point(0, 9)),
    Brick(position: Point(0, 10)),
    Brick(position: Point(1, 10)),
    Brick(position: Point(2, 10)),
    Brick(position: Point(3, 10)),
    Brick(position: Point(4, 10)),
    Brick(position: Point(4, 9)),
    Brick(position: Point(6, 6)),
    Brick(position: Point(8, 6)),
    Brick(position: Point(10, 7)),
    Brick(position: Point(10, 6)),
    Brick(position: Point(11, 6)),
    Brick(position: Point(12, 6)).
    Brick(position: Point(13, 6)),
    Brick(position: Point(14, 6)),
    Brick(position: Point(14, 7)),
    Brick(position: Point(14, 8)),
    Brick(position: Point(14, 9)),
    Brick(position: Point(14, 10)),
    Brick(position: Point(13, 10)),
    Brick(position: Point(12, 10)),
    Brick(position: Point(11, 10)),
    Brick(position: Point(10, 10)),
    Brick(position: Point(10, 9)),
    Brick(position: Point(4, 12)),
    Brick(position: Point(4, 13)),
    Brick(position: Point(3, 12)),
    Brick(position: Point(2, 12)),
    Brick(position: Point(0, 12)),
    Brick(position: Point(0, 13)),
    Brick(position: Point(0, 14)),
    Brick(position: Point(0, 15)),
    Brick(position: Point(0, 16)),
    Brick(position: Point(0, 17)),
    Brick(position: Point(0, 18)),
    Brick(position: Point(1, 18)),
    Brick(position: Point(2, 18)),
    Brick(position: Point(3, 18)),
    Brick(position: Point(4, 18)),
    Brick(position: Point(4, 17)),
    Brick(position: Point(4, 16)),
    Brick(position: Point(4, 15)),
    Brick(position: Point(5, 15)),
    Brick(position: Point(6, 15)),
    Brick(position: Point(5, 16)),
    Brick(position: Point(5, 17)),
    Brick(position: Point(5, 18)),
    Brick(position: Point(6, 18)),
    Brick(position: Point(7, 18)),
    Brick(position: Point(8, 18)),
    Brick(position: Point(9, 16)),
    Brick(position: Point(6, 15)),
    Brick(position: Point(8, 15)),
    Brick(position: Point(6, 12)),
    Brick(position: Point(8, 12)),
    Brick(position: Point(10, 13)),
    Brick(position: Point(10, 12)), 
    Brick(position: Point(11, 12)),
    Brick(position: Point(12, 12)),
    Brick(position: Point(13, 12)),
    Brick(position: Point(14, 12)),
    Brick(position: Point(14, 13)),
    Brick(position: Point(14, 14)),
    Brick(position: Point(14, 15)),
    Brick(position: Point(14, 16)),
    Brick(position: Point(14, 17)),
    Brick(position: Point(14, 18)),
    Brick(position: Point(13, 18)), 
    Brick(position: Point(12, 18)),
    Brick(position: Point(10, 15)),
    Brick(position: Point(10, 16)),
    Brick(position: Point(10, 17)), 
  ];
}
