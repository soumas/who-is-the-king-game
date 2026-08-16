import 'package:flutter/material.dart';
import 'package:who_is_the_king_core/who_is_the_king_core.dart';
import 'package:who_is_the_king_ui/src/common/widgets/wit_scaffold.dart';
import 'package:who_is_the_king_ui/src/features/gameplay/domain/game_play_config.dart';
import 'package:who_is_the_king_ui/src/features/maps/ui/map_preview.dart';

class GameplayScreen extends StatefulWidget {
  static String routePath = '/gameplay';

  const GameplayScreen({super.key, required this.config});

  final GamePlayConfig config;

  @override
  State<GameplayScreen> createState() => _GameplayScreenState();
}

class _GameplayScreenState extends State<GameplayScreen> {
  late GameController _gameController;

  @override
  void initState() {
    _gameController = GameController(
      map: widget.config.map,
      players: widget.config.players,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WitScaffold(
      body: OrientationBuilder(
        builder: (context, orientation) {
          return orientation == Orientation.portrait
              ? Center(
                  child: Text(
                    '!!! BITTE DREHEN !!!',
                    textAlign: TextAlign.center,
                  ),
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MapPreview(map: widget.config.map),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: widget.config.players
                          .map(
                            (p) => Text(
                              'Spieler: ${p.name}, Rebelle: ${p.rebel.name}',
                            ),
                          )
                          .toList(),
                    ),
                  ],
                );
        },
      ),
    );
  }
}
