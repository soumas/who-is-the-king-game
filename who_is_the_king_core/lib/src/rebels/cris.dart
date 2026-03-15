import 'dart:math';

import 'package:who_is_the_king_core/src/rebels/base/attack.dart';
import 'package:who_is_the_king_core/src/rebels/base/rebel.dart';

class Cris extends Rebel {
  @override
  String get name => 'CRIS';

  @override
  int get hearts => 8;

  @override
  int get multiAttackCost => 4;

  @override
  DefaultAttack get defaultAttack => DefaultAttack(
    maxThrowingDistance: 4,
    damageArea: [const Point(0, 0)],
    canPenetrateWalls: true,
  );

  @override
  MultiAttack get multiAttack => MultiAttack(
    maxThrowingDistance: 1,
    damageArea: [
      const Point(0, 0),
      const Point(0, 1),
      const Point(0, 2),
      const Point(0, 3),
      const Point(0, 4),
    ],
    canPenetrateWalls: false,
    minMoveDistance: 0,
    maxMoveDistance: 0,
  );
}
