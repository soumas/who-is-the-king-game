import 'dart:math';

import 'package:collection/collection.dart';
import 'package:who_is_the_king_core/src/maps/base/map_object.dart';

abstract class WtkMap {
  String get name;
  String get description;
  int get sizeX;
  int get sizeY;
  int get numPlayersMin;
  int get numPlayersMax;
  List<MapObject> get staticObjects;

  T? getObj<T extends MapObject>(Point<int> position) {
    return staticObjects.firstWhereOrNull(
          (object) => object is T && object.position == position,
        )
        as T?;
  }
}
