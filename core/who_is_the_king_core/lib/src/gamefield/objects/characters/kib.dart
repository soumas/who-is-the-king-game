import 'package:who_is_the_king_core/src/gamefield/objects/base/character.dart';

class Kib extends Character {
  Kib({required super.position, required super.orientation});

  @override
  String get name => 'KIB';

  @override
  int get hearts => 11;
}
