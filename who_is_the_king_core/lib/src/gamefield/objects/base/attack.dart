import 'dart:math';

class DefaultAttack {
  DefaultAttack({required this.maxThrowingDistance, required this.damageArea, required this.canPenetrateWalls});
  final int maxThrowingDistance;
  final List<Point> damageArea;
  final bool canPenetrateWalls;
}

class MultiAttack extends DefaultAttack {
  MultiAttack({
    required super.maxThrowingDistance,
    required super.damageArea,
    required super.canPenetrateWalls,
    required this.minMoveDistance,
    required this.maxMoveDistance,
  });
  final int minMoveDistance;
  final int maxMoveDistance;
}
