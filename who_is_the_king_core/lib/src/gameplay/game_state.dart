import 'package:who_is_the_king_core/src/maps/base/wtk_map.dart';
import 'package:who_is_the_king_core/src/gameplay/player_state.dart';
import 'package:who_is_the_king_core/src/gameplay/turn_state.dart';

class GameState {
  GameState({required this.field, required this.players});
  final WtkMap field;
  final List<PlayerState> players;
  final TurnState turn = TurnState();
}
