import 'dart:math';

import 'package:who_is_the_king_core/src/rebels/base/attack.dart';
import 'package:who_is_the_king_core/src/rebels/base/rebel.dart';

class Ben extends Rebel {
  @override
  String get name => 'BEN';

  @override
  int get hearts => 8;

  @override
  int get multiAttackCost => 3;

  @override
  DefaultAttack get defaultAttack => DefaultAttack(
    maxThrowingDistance: 1,
    damageArea: [
      const Point(-1, 1),
      const Point(-1, 2),
      const Point(-1, 0),
      const Point(1, 0),
      const Point(1, 1),
      const Point(0, 0),
      const Point(0, 1),
      const Point(0, 2),
      const Point(1, 2),
    ],

    canPenetrateWalls: false,
  );

  @override
  MultiAttack get multiAttack => MultiAttack(
    maxThrowingDistance: 1,
    damageArea: [const Point(0, 0), const Point(0, 1)],
    canPenetrateWalls: true,
    minMoveDistance: 2,
    maxMoveDistance: 2,
  );
}
