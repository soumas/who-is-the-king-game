import 'dart:math';

import 'package:collection/collection.dart';
import 'package:who_is_the_king_core/src/gamefield/objects/base/gamefield_object.dart';

class Gamefield {
  Gamefield({required this.sizeX, required this.sizeY});
  final int sizeX;
  final int sizeY;
  final List<GamefieldObject> objects = [];

  bool addObj(GamefieldObject object) {
    if (!canMoveTo(position: object.position)) {
      return false;
    }
    objects.add(object);
    return true;
  }

  bool canMoveTo({required Point<int> position}) {
    return getObj(position: position) == null;
  }

  T? getObj<T extends GamefieldObject>({required Point<int> position}) {
    return objects.firstWhereOrNull((object) => object is T && object.position == position) as T?;
  }
}
