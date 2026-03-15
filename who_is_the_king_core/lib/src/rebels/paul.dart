import 'dart:math';

import 'package:who_is_the_king_core/src/rebels/base/attack.dart';
import 'package:who_is_the_king_core/src/rebels/base/rebel.dart';

class Paul extends Rebel {
  @override
  String get name => 'PAUL';

  @override
  int get hearts => 10;

  @override
  int get multiAttackCost => 3;

  @override
  DefaultAttack get defaultAttack => DefaultAttack(
    maxThrowingDistance: 1,
    damageArea: [const Point(0, 0), const Point(-0, 1)],
    canPenetrateWalls: false,
  );

  @override
  MultiAttack get multiAttack => MultiAttack(
    maxThrowingDistance: 1,
    damageArea: [const Point(0, 0)],
    canPenetrateWalls: true,
    minMoveDistance: 1,
    maxMoveDistance: 4,
  );
}
