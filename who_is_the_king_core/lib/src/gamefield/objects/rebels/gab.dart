import 'dart:math';

import 'package:who_is_the_king_core/src/gamefield/objects/base/attack.dart';
import 'package:who_is_the_king_core/src/gamefield/objects/base/rebel.dart';

class Gab extends Rebel {
  @override
  String get name => 'GAB';

  @override
  int get hearts => 10;

  @override
  int get multiAttackCost => 2;

  @override
  DefaultAttack get defaultAttack => DefaultAttack(
    maxThrowingDistance: 1,
    damageArea: [const Point(0, 0), const Point(0, 1)],
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
