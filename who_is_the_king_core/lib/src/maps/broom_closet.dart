import 'dart:math';

import 'package:who_is_the_king_core/src/maps/base/brick.dart';
import 'package:who_is_the_king_core/src/maps/base/map_object.dart';
import 'package:who_is_the_king_core/who_is_the_king_core.dart';

class BroomCloset extends WtkMap {
  @override
  String get name => 'Broom closet';

  @override
  String get description =>
      'Schlachtfeld in der Besenkammer des Schlosses. Es gibt wenige Mauern da das spielfeld sehr klein ist.';

  @override
  int get numPlayersMax => 2;

  @override
  int get numPlayersMin => 2;

  @override
  int get sizeX => 6;

  @override
  int get sizeY => 5;

  @override
  List<MapObject> get staticObjects => [
    Brick(position: Point(1, 1)),
    Brick(position: Point(1, 3)),
    Brick(position: Point(0, 1)),
    Brick(position: Point(3, 1)),
    Brick(position: Point(3, 2)),
    Brick(position: Point(3, 3)),
    Brick(position: Point(5, 1)),
    Brick(position: Point(5, 4)),
  ];
}
