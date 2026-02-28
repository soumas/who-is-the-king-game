import 'dart:math';

abstract class GamefieldObject {
  GamefieldObject({required this.position});
  Point<int> position;
}
