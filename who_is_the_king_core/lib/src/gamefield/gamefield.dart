import 'dart:math';

import 'package:collection/collection.dart';
import 'package:who_is_the_king_core/src/gamefield/objects/base/gamefield_object.dart';

Point<int> kOffstagePosition = Point(-1, -1);

class Gamefield {
  Gamefield({required this.sizeX, required this.sizeY});
  final int sizeX;
  final int sizeY;
  final List<GamefieldObject> objects = [];

  bool addObj(GamefieldObject object) {
    if (!objects.contains(object) &&
        (kOffstagePosition == object.position ||
            isCellEmpty(object.position))) {
      objects.add(object);
      return true;
    }
    return false;
  }

  bool isCellEmpty(Point<int> position) {
    return getObj(position) == null;
  }

  T? getObj<T extends GamefieldObject>(Point<int> position) {
    return objects.firstWhereOrNull(
          (object) => object is T && object.position == position,
        )
        as T?;
  }
}
