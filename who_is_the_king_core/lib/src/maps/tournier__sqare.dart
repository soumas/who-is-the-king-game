import 'dart:math';

import 'package:who_is_the_king_core/src/maps/base/brick.dart';
import 'package:who_is_the_king_core/src/maps/base/map_object.dart';
import 'package:who_is_the_king_core/who_is_the_king_core.dart';

class TournierSqare extends WtkMap {
  @override
  String get name => 'Tounier sqare';

  @override
  String get description =>
      'Schlachtfeld von den Tounier Platz des Schlosses. Es gibt viel deckung, aber wenig Platz';

  @override
  int get numPlayersMax => 2;

  @override
  int get numPlayersMin => 2;

  @override
  int get sizeX => 10;

  @override
  int get sizeY => 4;

  @override
  List<MapObject> get staticObjects => [
    Brick(position: Point(1, 1)),
    Brick(position: Point(0, 0)),
    Brick(position: Point(0, 3)),
    Brick(position: Point(2, 2)),
    Brick(position: Point(3, 1)),
    Brick(position: Point(4, 2)),
    Brick(position: Point(5, 1)),
    Brick(position: Point(6, 2)),
    Brick(position: Point(7, 1)),
    Brick(position: Point(8, 2)),
    Brick(position: Point(9, 0)),
  ]
}
