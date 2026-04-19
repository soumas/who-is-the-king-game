import 'dart:math';

import 'package:who_is_the_king_core/src/maps/base/brick.dart';
import 'package:who_is_the_king_core/src/maps/base/map_object.dart';
import 'package:who_is_the_king_core/who_is_the_king_core.dart';

class DarkCellar extends WtkMap {
  @override
  String get name => 'Dark Cellar';

  @override
  String get description =>
      'Schlachtfeld im dunklen Keller des Schlosses. Es bietet viele Deckungen, aber wenig Bewegungsfreiheit.';

  @override
  int get numPlayersMax => 6;

  @override
  int get numPlayersMin => 2;

  @override
  int get sizeX => 14;

  @override
  int get sizeY => 10;

  @override
  List<MapObject> get staticObjects => [
    Brick(position: Point(1, 1)),
    Brick(position: Point(2, 1)),
    Brick(position: Point(3, 1)),
    Brick(position: Point(4, 1)),
    Brick(position: Point(4, 2)),
    Brick(position: Point(1, 2)),
    Brick(position: Point(6, 1)),
    Brick(position: Point(6, 2)),
    Brick(position: Point(6, 3)),
    Brick(position: Point(8, 1)),
    Brick(position: Point(8, 2)),
    Brick(position: Point(8, 3)),
    Brick(position: Point(9, 1)),
    Brick(position: Point(11, 2)),
    Brick(position: Point(11, 3)),
    Brick(position: Point(11, 4)),
    Brick(position: Point(11, 5)),
    Brick(position: Point(12, 2)),
    Brick(position: Point(12, 3)),
    Brick(position: Point(12, 4)),
    Brick(position: Point(12, 5)),
    Brick(position: Point(12, 8)),
    Brick(position: Point(11, 8)),
    Brick(position: Point(10, 8)),
    Brick(position: Point(7, 8)),
    Brick(position: Point(7, 7)),
    Brick(position: Point(7, 5)),
    Brick(position: Point(8, 5)),
    Brick(position: Point(9, 5)),
    Brick(position: Point(3, 4)),
    Brick(position: Point(3, 5)),
    Brick(position: Point(3, 6)),
    Brick(position: Point(3, 7)),
    Brick(position: Point(4, 7)),
    Brick(position: Point(5, 7)),
    Brick(position: Point(1, 5)),
    Brick(position: Point(1, 6)),
    Brick(position: Point(1, 7)),
    Brick(position: Point(1, 8)),
  ];
}
