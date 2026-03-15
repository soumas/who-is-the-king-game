import 'dart:math';

import 'package:who_is_the_king_core/src/gamefield/objects/base/attack.dart';
import 'package:who_is_the_king_core/src/gamefield/objects/base/rebel.dart';

class Kib extends Rebel {
  @override
  String get name => 'KIB';

  @override
  int get hearts => 11;

  @override
  int get multiAttackCost => 2;

  @override
  DefaultAttack get defaultAttack => DefaultAttack(
    maxThrowingDistance: 1,
    damageArea: [const Point(0, 0)],
    canPenetrateWalls: false,
  );

  @override
  MultiAttack get multiAttack => MultiAttack(
    maxThrowingDistance: 1,
    damageArea: [
      const Point(0, 0),
      const Point(0, 1),
      const Point(0, 2),
      const Point(0, 3),
    ],
    canPenetrateWalls: true,
    minMoveDistance: 4,
    maxMoveDistance: 4,
  );
}
