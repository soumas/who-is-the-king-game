import 'dart:math';

import 'package:who_is_the_king_core/src/gamefield/objects/base/attack.dart';
import 'package:who_is_the_king_core/src/gamefield/objects/base/character.dart';

class Harry extends Character {
  @override
  String get name => 'HARRY';

  @override
  int get hearts => 9;

  @override
  int get multiAttackCost => 3;

  @override
  DefaultAttack get defaultAttack => DefaultAttack(
    maxThrowingDistance: 1,
    damageArea: [const Point(0, 0), const Point(0, 1), const Point(0, 2)],
    canPenetrateWalls: false,
  );

  @override
  MultiAttack get multiAttack => MultiAttack(
    maxThrowingDistance: 1,
    damageArea: [const Point(0, 0)],
    canPenetrateWalls: true,
    minMoveDistance: 1,
    maxMoveDistance: 3,
  );
}
