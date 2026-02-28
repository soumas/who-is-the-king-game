import 'package:who_is_the_king_core/src/gamefield/objects/base/gamefield_object.dart';

enum Orientation { north, east, south, west }

abstract class OrientedGamefieldObject extends GamefieldObject {
  OrientedGamefieldObject({required super.position, required this.orientation});
  Orientation orientation;
}
