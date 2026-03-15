import 'dart:math';

import 'package:who_is_the_king_core/src/gamefield/objects/base/attack.dart';
import 'package:who_is_the_king_core/src/gamefield/objects/base/character.dart';

class Lee extends Character {
  @override
  String get name => 'LEE';

  @override
  int get hearts => 9;

  @override
  int get multiAttackCost => 4;

  @override
  DefaultAttack get defaultAttack => DefaultAttack(
    maxThrowingDistance: 1,
    damageArea: [
      const Point(0, 0),
      const Point(0, 1),
      const Point(0, 2),
    ],
    canPenetrateWalls: false,
  );

  @override
  MultiAttack get multiAttack => MultiAttack(
    maxThrowingDistance: 2,
    damageArea: [
      const Point(0, 1),
      const Point(1, 1),
      const Point(2, 1),
      const Point(2, 0),
      const Point(2, -1),
      const Point(2, -2),
      const Point(2, -3),
      const Point(1, -3),
      const Point(0, -3),
      const Point(-1, -3),
      const Point(-2, -3),
      const Point(-2, -2),
      const Point(-2, -1),
      const Point(-2, 0),
      const Point(-2, 1),
      const Point(-1, 1),
    ],
    canPenetrateWalls: false,
    minMoveDistance: 0,
    maxMoveDistance: 0,
  );
}
