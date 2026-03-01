import 'dart:math';

import 'package:who_is_the_king_core/src/gamefield/objects/base/attack.dart';
import 'package:who_is_the_king_core/src/gamefield/objects/base/character.dart';

class MrFreeze extends Character {
  @override
  String get name => 'MR. FREEZE';

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
    const Point(0, 2)
    ],
    canPenetrateWalls: false,
  );

  @override
  MultiAttack get multiAttack => MultiAttack(
    maxThrowingDistance: 4,
    damageArea: [
      const Point(0, 0),
      const Point(-1, 0),
      const Point(1, 0),
      const Point(0, 1),
      const Point(0, -1),
    ],
    canPenetrateWalls: true,
    minMoveDistance: 0,
    maxMoveDistance: 0,
  );
}
