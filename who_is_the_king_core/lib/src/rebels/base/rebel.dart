import 'package:who_is_the_king_core/who_is_the_king_core.dart';

abstract class Rebel {
  Rebel();
  String get name;
  int get hearts;
  int get multiAttackCost;
  DefaultAttack get defaultAttack;
  MultiAttack get multiAttack;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Rebel && other.name == name;
  }

  @override
  int get hashCode => name.hashCode;
}
