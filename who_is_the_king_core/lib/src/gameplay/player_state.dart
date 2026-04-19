import 'dart:math';

import 'package:who_is_the_king_core/src/maps/base/map_object.dart';
import 'package:who_is_the_king_core/who_is_the_king_core.dart';

class PlayerState extends MapObject {
  PlayerState({required this.rebel}) : super(position: Point(-1, -1));
  Rebel rebel;
  int kills = 0;
  int deaths = 0;
}
