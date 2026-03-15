import 'dart:math';

import 'package:who_is_the_king_core/src/rebels/base/attack.dart';
import 'package:who_is_the_king_core/src/rebels/base/rebel.dart';

class Penpen extends Rebel {
  @override
  String get name => 'PENPEN';

  @override
  int get hearts => 9;

  @override
  int get multiAttackCost => 4;

  @override
  DefaultAttack get defaultAttack => DefaultAttack(
    maxThrowingDistance: 1,
    damageArea: [
      const Point(-1, 0),
      const Point(-1, 1),
      const Point(-1, 2),
      const Point(1, 0),
      const Point(1, 1),
      const Point(1, 2),
    ],

    canPenetrateWalls: false,
  );

  @override
  MultiAttack get multiAttack => MultiAttack(
    maxThrowingDistance: 3,
    damageArea: [const Point(0, 0)],
    canPenetrateWalls: true,
    minMoveDistance: 1,
    maxMoveDistance: 3,
  );
}
