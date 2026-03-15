import 'package:who_is_the_king_core/src/gamefield/objects/base/gamefield_object.dart';
import 'package:who_is_the_king_core/who_is_the_king_core.dart';

class PlayerState extends GamefieldObject {
  PlayerState({required this.rebel}) : super(position: kOffstagePosition);
  Rebel rebel;
  int kills = 0;
  int deaths = 0;
}
