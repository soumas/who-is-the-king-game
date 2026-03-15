import 'dart:developer';
import 'dart:math' hide log;

import 'package:who_is_the_king_core/src/gamefield/objects/base/oriented_gamefield_object.dart';
import 'package:who_is_the_king_core/src/gameplay/game_state.dart';
import 'package:who_is_the_king_core/src/gameplay/player_state.dart';
import 'package:who_is_the_king_core/src/gameplay/turn_state.dart';
import 'package:who_is_the_king_core/who_is_the_king_core.dart';

class GameController {
  factory GameController.startGame(Gamefield field, Set<Rebel> players) {
    return GameController(
      gameField: field,
      players: players.map((rebel) => PlayerState(rebel: rebel)).toList(),
    );
  }

  GameController({
    required Gamefield gameField,
    required List<PlayerState> players,
  }) : _gameState = GameState(field: gameField, players: players) {
    assert(
      players.isNotEmpty,
      'There must be at least one player to start the game.',
    );
    _gameState.players.shuffle();
    _gameState.players.forEach(_addToGamefield);
    _gameState.players.forEach(_placeAtRandomPosition);
    startTurn(_gameState.players.first.rebel);
  }

  final GameState _gameState;

  GameState get gameState => _gameState;

  void startTurn(Rebel player) {
    _gameState.turn.rebel = player;
    _gameState.turn.phase = TurnPhase.diceRoll;
    _gameState.turn.diceRollResult = 0;
    _gameState.turn.movedSteps = [];
    _gameState.turn.multiAttackUsed = false;
    log('Turn started for ${player.name}');
  }

  void rollTheDie() {
    assert(
      _gameState.turn.phase == TurnPhase.diceRoll,
      'Cannot roll the die outside of the dice roll phase.',
    );
    _gameState.turn.diceRollResult =
        Random().nextInt(double.maxFinite.toInt()) % 6 + 1;
    _gameState.turn.phase = TurnPhase.move;
    log('Dice rolled: ${_gameState.turn.diceRollResult}');
  }

  void moveRebel(Orientation direction) {
    // assert(
    //   _gameState.turn.phase == TurnPhase.move,
    //   'Cannot move outside of the move phase.',
    // );
    // final playerState = _gameState.players.firstWhere(
    //   (p) => p.rebel == _gameState.turn.rebel,
    // );
    // final currentPosition = playerState.position;
    // final newPosition = _calculateNewPosition(currentPosition, direction);
    // if (_gameState.field.isCellEmpty(newPosition)) {
    //   playerState.position = newPosition;
    //   _gameState.turn.movedSteps.add(direction);
    //   log(
    //     'Moved ${playerState.rebel.name} to position (${newPosition.x}, ${newPosition.y})',
    //   );
    // } else {
    //   log(
    //     'Cannot move to position (${newPosition.x}, ${newPosition.y}) - cell is not empty.',
    //   );
    // }
  }

  void _addToGamefield(PlayerState p) {
    _gameState.field.addObj(p);
  }

  void _placeAtRandomPosition(PlayerState p) {
    final field = _gameState.field;
    do {
      final x = Random().nextInt(field.sizeX);
      final y = Random().nextInt(field.sizeY);
      if (field.isCellEmpty(Point(x, y))) {
        p.position = Point(x, y);
        log('Placed ${p.rebel.name} at position ($x, $y)');
        break;
      }
    } while (_gameState.field.addObj(p) == false);
  }
}
