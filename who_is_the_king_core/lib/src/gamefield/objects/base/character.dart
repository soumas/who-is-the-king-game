import 'package:who_is_the_king_core/src/gamefield/objects/base/attack.dart';
import 'package:who_is_the_king_core/src/gamefield/objects/base/oriented_gamefield_object.dart';

abstract class Character extends OrientedGamefieldObject {
  Character({required super.position, required super.orientation});
  String get name;
  int get hearts;
  int get multiAttackCost;
  DefaultAttack get defaultAttack;
  MultiAttack get multiAttack;
}
