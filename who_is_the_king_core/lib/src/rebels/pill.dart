import 'dart:math';

import 'package:who_is_the_king_core/src/rebels/base/attack.dart';
import 'package:who_is_the_king_core/src/rebels/base/rebel.dart';

class Pill extends Rebel {
  @override
  String get name => 'PILL';

  @override
  int get hearts => 9;

  @override
  int get multiAttackCost => 4;

  @override
  DefaultAttack get defaultAttack => DefaultAttack(
    maxThrowingDistance: 1,
    damageArea: [const Point(0, 0), const Point(0, 1), const Point(0, 2)],
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
