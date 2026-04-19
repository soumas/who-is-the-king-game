import 'package:who_is_the_king_core/src/maps/base/map_object.dart';

enum Orientation { north, east, south, west }

abstract class OrientedMapObject extends MapObject {
  OrientedMapObject({required super.position, required this.orientation});
  Orientation orientation;
}
