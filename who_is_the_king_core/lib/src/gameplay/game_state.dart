import 'package:who_is_the_king_core/src/gamefield/gamefield.dart';
import 'package:who_is_the_king_core/src/gameplay/player_state.dart';
import 'package:who_is_the_king_core/src/gameplay/turn_state.dart';

class GameState {
  GameState({required this.field, required this.players});
  final Gamefield field;
  final List<PlayerState> players;
  final TurnState turn = TurnState();
}
