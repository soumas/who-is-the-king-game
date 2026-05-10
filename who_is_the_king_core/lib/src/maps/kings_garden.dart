import 'dart:math';

import 'package:who_is_the_king_core/src/maps/base/brick.dart';
import 'package:who_is_the_king_core/src/maps/base/map_object.dart';
import 'package:who_is_the_king_core/who_is_the_king_core.dart';

class KingsGarden extends WtkMap {
  @override
  String get name => 'King''s garden';

  @override
  String get description =>
      'Schlachtfeld im Königsgarten des Schlosses. Es bietet viele Deckungen, aber wenig Bewegungsfreiheit.';

  @override
  int get numPlayersMax => 6;

  @override
  int get numPlayersMin => 2;

  @override
  int get sizeX => 18;

  @override
  int get sizeY => 18;

  @override
  List<MapObject> get staticObjects => [
    Brick(position: Point(1, 1)),
    Brick(position: Point(1, 2)),
    Brick(position: Point(1, 3)),
    Brick(position: Point(1, 4)),
    Brick(position: Point(1, 5)),
    Brick(position: Point(1, 6)),
    Brick(position: Point(1, 7)),
    Brick(position: Point(1, 8)),
    Brick(position: Point(1, 9)),
    Brick(position: Point(1, 10)),
    Brick(position: Point(1, 11)),
    Brick(position: Point(1, 12)),
    Brick(position: Point(1, 13)),
    Brick(position: Point(1, 14)),
    Brick(position: Point(1, 15)),
    Brick(position: Point(1, 16)),
    Brick(position: Point(16, 1))
    Brick(position: Point(16, 2)),
    Brick(position: Point(16, 3)),
    Brick(position: Point(16, 4)),
    Brick(position: Point(16, 5)),
    Brick(position: Point(16, 6)),
    Brick(position: Point(16, 7)),
    Brick(position: Point(16, 8)),
    Brick(position: Point(16, 9)),
    Brick(position: Point(16, 10)),
    Brick(position: Point(16, 11)),
    Brick(position: Point(16, 12)),
    Brick(position: Point(16, 13)),
    Brick(position: Point(16, 14)),
    Brick(position: Point(16, 15)),
    Brick(position: Point(16, 16)),
    Brick(position: Point(2, 16)),
    Brick(position: Point(3, 16)),
    Brick(position: Point(4, 16)),
    Brick(position: Point(5, 16)),
    Brick(position: Point(6, 16)),
    Brick(position: Point(7, 16)),
    Brick(position: Point(8, 16)),
    Brick(position: Point(9, 16)),
    Brick(position: Point(10, 16)),
    Brick(position: Point(11, 16)),
    Brick(position: Point(12, 16)),
    Brick(position: Point(13, 16)),
    Brick(position: Point(14, 16)),
    Brick(position: Point(15, 16)),
    Brick(position: Point(2, 1)),
    Brick(position: Point(3, 1)),
    Brick(position: Point(4, 1)),
    Brick(position: Point(5, 1)),
    Brick(position: Point(6, 1)),
    Brick(position: Point(7, 1)),
    Brick(position: Point(8, 1)),
    Brick(position: Point(9, 1)),
    Brick(position: Point(10, 1)),
    Brick(position: Point(11, 1)),
    Brick(position: Point(12, 1)),
    Brick(position: Point(13, 1)),
    Brick(position: Point(14, 1)),
    Brick(position: Point(3, 3)),
    Brick(position: Point(4, 3)),
    Brick(position: Point(5, 3)),
    Brick(position: Point(6, 3)),
    Brick(position: Point(7, 3)),
    Brick(position: Point(8, 3)),
    Brick(position: Point(9, 3)),
    Brick(position: Point(10, 3)),
    Brick(position: Point(11, 3)),
    Brick(position: Point(12, 3)),
    Brick(position: Point(13, 3)),
    Brick(position: Point(14, 3)),
    Brick(position: Point(14, 4)),
    Brick(position: Point(14, 5)),
    Brick(position: Point(14, 6)),
    Brick(position: Point(14, 7)),
    Brick(position: Point(14, 8)),
    Brick(position: Point(14, 9)),
    Brick(position: Point(14, 10)),
    Brick(position: Point(14, 11)),
    Brick(position: Point(14, 12)),
    Brick(position: Point(14, 13)),
    Brick(position: Point(3, 14)),
    Brick(position: Point(4, 14)),
    Brick(position: Point(5, 14)),
    Brick(position: Point(6, 14)),
    Brick(position: Point(7, 14)),
    Brick(position: Point(8, 14)),
    Brick(position: Point(9, 14)),
    Brick(position: Point(10, 14)),
    Brick(position: Point(11, 14)),
    Brick(position: Point(12, 14)),
    Brick(position: Point(13, 14)),
    Brick(position: Point(3, 5)),
    Brick(position: Point(3, 6)),
    Brick(position: Point(3, 7)),
    Brick(position: Point(3, 8)),
    Brick(position: Point(3, 9)),
    Brick(position: Point(3, 10)),
    Brick(position: Point(3, 11)),
    Brick(position: Point(3, 12)),
    Brick(position: Point(3, 13)),
    Brick(position: Point(12, 5)),
    Brick(position: Point(12, 6)),
    Brick(position: Point(12, 7)),
    Brick(position: Point(12, 8)),
    Brick(position: Point(12, 9)),
    Brick(position: Point(12, 10)),
    Brick(position: Point(12, 11)),
    Brick(position: Point(12, 12)),
    Brick(position: Point(5, 5)),
    Brick(position: Point(6, 5)),
    Brick(position: Point(7, 5)),
    Brick(position: Point(8, 5)),
    Brick(position: Point(9, 5)),
    Brick(position: Point(10, 5)),
    Brick(position: Point(11, 5)),
    Brick(position: Point(5, 6)),
    Brick(position: Point(5, 7)),
    Brick(position: Point(5, 8)),
    Brick(position: Point(5, 9)),
    Brick(position: Point(5, 10)),
    Brick(position: Point(5, 11)),
    Brick(position: Point(5, 12)),
    Brick(position: Point(6, 12)),
    Brick(position: Point(7, 12)),
    Brick(position: Point(8, 12)),
    Brick(position: Point(9, 12)),
    Brick(position: Point(10, 12)),
    Brick(position: Point(9, 7)),
    Brick(position: Point(10, 7)),
    Brick(position: Point(10, 8)),
    Brick(position: Point(10, 9)),
    Brick(position: Point(10, 10)),
    Brick(position: Point(9, 10)),
    Brick(position: Point(8, 10)),
    Brick(position: Point(7, 10)),
    Brick(position: Point(7, 9)),
    Brick(position: Point(7, 8)),
    Brick(position: Point(7, 7)),







  ];
}
