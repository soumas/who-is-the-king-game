import 'package:who_is_the_king_core/who_is_the_king_core.dart';

class Player {
  Player({required this.name, required Rebel rebel})
    : state = PlayerState(rebel: rebel);

  final String name;
  final PlayerState state;
}
