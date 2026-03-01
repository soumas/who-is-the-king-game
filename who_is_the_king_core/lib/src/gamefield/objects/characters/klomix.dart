import 'dart:math';

import 'package:who_is_the_king_core/src/gamefield/objects/base/attack.dart';
import 'package:who_is_the_king_core/src/gamefield/objects/base/character.dart';

class Klomix extends Character {
  Klomix({required super.position, required super.orientation});

  @override
  String get name => 'KLOMIX';

  @override
  int get hearts => 8;

  @override
  int get multiAttackCost => 5;

  @override
  DefaultAttack get defaultAttack => DefaultAttack(
    maxThrowingDistance: 1, 
    damageArea: [
      const Point(0, 0),
      const Point(0, 1),
      const Point(0, 2),
      const Point(0, 3)
    ], 
    canPenetrateWalls: false
  );

  @override
  MultiAttack get multiAttack =>
      MultiAttack(
        maxThrowingDistance: 1, 
        damageArea: [
          const Point(0, 0),
          const Point(0, 1),
          const Point(0, 2),
          const Point(0, 3),
          const Point(0, 4),
          const Point(-1, 2),
          const Point(-2, 2),
          const Point(1, 2),
          const Point(2, 2), 
        ], 
        canPenetrateWalls: true
        minMoveDistance: 0,
        maxMoveDistance: 0
      );
}
