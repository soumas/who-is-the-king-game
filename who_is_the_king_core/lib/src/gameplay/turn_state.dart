import 'package:who_is_the_king_core/src/maps/base/oriented_map_object.dart';
import 'package:who_is_the_king_core/who_is_the_king_core.dart';

enum TurnPhase { diceRoll, move, attack }

class TurnState {
  late Rebel rebel;
  TurnPhase phase = TurnPhase.diceRoll;
  int? diceRollResult;
  late List<Orientation> movedSteps = [];
  late bool multiAttackUsed;
}
