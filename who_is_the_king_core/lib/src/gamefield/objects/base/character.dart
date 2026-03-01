import 'package:who_is_the_king_core/who_is_the_king_core.dart';

abstract class Character {
  Character();
  String get name;
  int get hearts;
  int get multiAttackCost;
  DefaultAttack get defaultAttack;
  MultiAttack get multiAttack;
}
