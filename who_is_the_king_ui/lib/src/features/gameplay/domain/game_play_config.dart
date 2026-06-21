import 'package:who_is_the_king_core/who_is_the_king_core.dart';
import 'package:who_is_the_king_ui/src/features/gameplay/domain/player.dart';

class GamePlayConfig {
  GamePlayConfig({required this.map, required this.players});

  final WtkMap map;
  final List<Player> players;
}
