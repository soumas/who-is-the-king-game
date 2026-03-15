import 'dart:math';

import 'package:who_is_the_king_core/src/rebels/base/attack.dart';
import 'package:who_is_the_king_core/src/rebels/base/rebel.dart';

class Glug extends Rebel {
  @override
  String get name => 'GLUG';

  @override
  int get hearts => 10;

  @override
  int get multiAttackCost => 3;

  @override
  DefaultAttack get defaultAttack => DefaultAttack(
    maxThrowingDistance: 3,
    damageArea: [const Point(0, 0)],
    canPenetrateWalls: true,
  );

  @override
  MultiAttack get multiAttack => MultiAttack(
    maxThrowingDistance: 1,
    damageArea: [
      const Point(0, 0),
      const Point(1, 0),
      const Point(1, -1),
      const Point(1, -2),
      const Point(0, -2),
      const Point(-1, -2),
      const Point(-1, -1),
      const Point(-1, 0),
    ],
    canPenetrateWalls: false,
    maxMoveDistance: 0,
    minMoveDistance: 0,
  );
}
