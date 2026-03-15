import 'dart:math';

import 'package:who_is_the_king_core/src/rebels/base/attack.dart';
import 'package:who_is_the_king_core/src/rebels/base/rebel.dart';

class Tillo extends Rebel {
  @override
  String get name => 'TILLO';

  @override
  int get hearts => 10;

  @override
  int get multiAttackCost => 3;

  @override
  DefaultAttack get defaultAttack => DefaultAttack(
    maxThrowingDistance: 1,
    damageArea: [const Point(0, 0), const Point(0, -2)],

    canPenetrateWalls: false,
  );

  @override
  MultiAttack get multiAttack => MultiAttack(
    maxThrowingDistance: 3,
    damageArea: [const Point(0, 0), const Point(0, 1), const Point(0, 2)],
    canPenetrateWalls: false,
    minMoveDistance: 0,
    maxMoveDistance: 0,
  );
}
