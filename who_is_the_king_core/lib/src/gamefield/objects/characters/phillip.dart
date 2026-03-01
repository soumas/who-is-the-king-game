import 'dart:math';

import 'package:who_is_the_king_core/src/gamefield/objects/base/attack.dart';
import 'package:who_is_the_king_core/src/gamefield/objects/base/character.dart';

class Phillip extends Character {
  Phillip({required super.position, required super.orientation});

  @override
  String get name => 'PHILLIP';

  @override
  int get hearts => 9;

  @override
  int get multiAttackCost => 4;

  @override
  DefaultAttack get defaultAttack => DefaultAttack(maxThrowingDistance: 4, damageArea: [const Point(0, 0)], canPenetrateWalls: true);

  @override
  MultiAttack get multiAttack =>
      MultiAttack(maxThrowingDistance: 4, damageArea: [const Point(0, 0)], canPenetrateWalls: true, minMoveDistance: 0, maxMoveDistance: 0);
}
