import 'dart:math';

import 'package:who_is_the_king_core/src/gamefield/objects/base/attack.dart';
import 'package:who_is_the_king_core/src/gamefield/objects/base/character.dart';

class Zok extends Character {
  Zok({required super.position, required super.orientation});

  @override
  String get name => 'ZOK';

  @override
  int get hearts => 10;

  @override
  int get multiAttackCost => 3;

  @override
  DefaultAttack get defaultAttack => DefaultAttack(
    maxThrowingDistance: 1,
    damageArea: [const Point(0, 0), const Point(-1, 0), const Point(1, 0)],
    canPenetrateWalls: false,
  );

  @override
  MultiAttack get multiAttack => MultiAttack(
    maxThrowingDistance: 3,
    damageArea: [
      const Point(0, 0),
      const Point(-1, 0),
      const Point(-1, 1),
      const Point(0, 1),
      const Point(1, 1),
      const Point(1, 0),
      const Point(1, -1),
      const Point(0, -1),
      const Point(-1, -1),
    ],
    canPenetrateWalls: true,
    minMoveDistance: 1,
    maxMoveDistance: 3,
  );
}
