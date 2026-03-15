import 'dart:math';

import 'package:who_is_the_king_core/src/rebels/base/attack.dart';
import 'package:who_is_the_king_core/src/rebels/base/rebel.dart';

class Bobomp extends Rebel {
  @override
  String get name => 'BOBOMP';

  @override
  int get hearts => 9;

  @override
  int get multiAttackCost => 4;

  @override
  DefaultAttack get defaultAttack => DefaultAttack(
    maxThrowingDistance: 3,
    damageArea: [const Point(0, 0)],
    canPenetrateWalls: true,
  );

  @override
  MultiAttack get multiAttack => MultiAttack(
    maxThrowingDistance: 3,
    damageArea: [
      const Point(0, 0),
      const Point(1, 0),
      const Point(0, 1),
      const Point(0, -1),
      const Point(-1, 0),
    ],
    canPenetrateWalls: true,
    maxMoveDistance: 0,
    minMoveDistance: 0,
  );
}
