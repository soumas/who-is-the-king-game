import 'package:who_is_the_king_core/src/gameplay/game_state.dart';
import 'package:who_is_the_king_core/src/gameplay/turn_state.dart';
import 'package:who_is_the_king_core/who_is_the_king_core.dart';

class GameController {
  GameController({required WtkMap map, required List<PlayerState> players})
    : _state = GameState(map: map, players: players) {
    assert(
      players.isNotEmpty,
      'There must be at least one player to start the game.',
    );
    // _state.players.forEach(_addToMap);
    // _state.players.forEach(_placeAtRandomPosition);
    //startTurn(_state.players.first.rebel);
  }

  final GameState _state;

  // GameState get gameState => _state;

  void startTurn(PlayerState player) {
    _state.turn.player = player;
    _state.turn.phase = TurnPhase.diceRoll;
    _state.turn.diceRollResult = 0;
    _state.turn.movedSteps = [];
    _state.turn.multiAttackUsed = false;
    // log('Turn started for ${player.name}');
  }

  // void rollTheDie() {
  //   assert(
  //     _state.turn.phase == TurnPhase.diceRoll,
  //     'Cannot roll the die outside of the dice roll phase.',
  //   );
  //   _state.turn.diceRollResult =
  //       Random().nextInt(double.maxFinite.toInt()) % 6 + 1;
  //   _state.turn.phase = TurnPhase.move;
  //   log('Dice rolled: ${_state.turn.diceRollResult}');
  // }

  // void moveRebel(Orientation direction) {
  //   // assert(
  //   //   _state.turn.phase == TurnPhase.move,
  //   //   'Cannot move outside of the move phase.',
  //   // );
  //   // final playerState = _state.players.firstWhere(
  //   //   (p) => p.rebel == _state.turn.rebel,
  //   // );
  //   // final currentPosition = playerState.position;
  //   // final newPosition = _calculateNewPosition(currentPosition, direction);
  //   // if (_state.field.isCellEmpty(newPosition)) {
  //   //   playerState.position = newPosition;
  //   //   _state.turn.movedSteps.add(direction);
  //   //   log(
  //   //     'Moved ${playerState.rebel.name} to position (${newPosition.x}, ${newPosition.y})',
  //   //   );
  //   // } else {
  //   //   log(
  //   //     'Cannot move to position (${newPosition.x}, ${newPosition.y}) - cell is not empty.',
  //   //   );
  //   // }
  // }

  // void _addToMap(PlayerState p) {
  //   _state.map.addObj(p);
  // }

  // void _placeAtRandomPosition(PlayerState p) {
  //   final map = _state.map;
  //   do {
  //     final x = Random().nextInt(map.sizeX);
  //     final y = Random().nextInt(map.sizeY);
  //     if (map.isCellEmpty(Point(x, y))) {
  //       p.position = Point(x, y);
  //       log('Placed ${p.rebel.name} at position ($x, $y)');
  //       break;
  //     }
  //   } while (_state.map.addObj(p) == false);
  // }
}
