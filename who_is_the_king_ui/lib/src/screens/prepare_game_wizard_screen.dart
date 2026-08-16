import 'dart:math';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:who_is_the_king_core/who_is_the_king_core.dart';
import 'package:who_is_the_king_ui/src/common/widgets/wit_scaffold.dart';
import 'package:who_is_the_king_ui/src/features/gameplay/domain/game_play_config.dart';
import 'package:who_is_the_king_ui/src/features/maps/ui/maps_list.dart';
import 'package:who_is_the_king_ui/src/features/rebels/ui/rebels_list_state.dart';
import 'package:who_is_the_king_ui/src/screens/gameplay_screen.dart';

class PrepareGameWizardScreen extends StatefulWidget {
  static String routePath = '/prepare-game-wizard';

  const PrepareGameWizardScreen({super.key});

  @override
  State<PrepareGameWizardScreen> createState() =>
      _PrepareGameWizardScreenState();
}

class _PrepareGameWizardScreenState extends State<PrepareGameWizardScreen> {
  int _selectedPlayers = 2;
  int _screen = 0;
  WtkMap? _selectedMap;
  final List<String> _selectedPlayerNames = List.filled(8, '');
  final List<Rebel?> _selectedRebels = List.filled(8, null);
  final _xxxStateBla = RebelsListState()..init();

  @override
  Widget build(BuildContext context) {
    return WitScaffold(
      title: 'Neues Spiel',
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: _screen == 0
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(height: 20),
                  Text(
                    'Wähle die Anzahl der Spieler',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  SizedBox(height: 10),
                  Wrap(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            _selectedPlayers = 2;
                          });
                        },
                        child: Text('2'),
                      ),
                      SizedBox(width: 10),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            _selectedPlayers = 3;
                          });
                        },
                        child: Text('3'),
                      ),
                      SizedBox(width: 10),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            _selectedPlayers = 4;
                          });
                        },
                        child: Text('4'),
                      ),
                      SizedBox(width: 10),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            _selectedPlayers = 5;
                          });
                        },
                        child: Text('5'),
                      ),
                      SizedBox(width: 10),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            _selectedPlayers = 6;
                          });
                        },
                        child: Text('6'),
                      ),
                      SizedBox(width: 10),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            _selectedPlayers = 7;
                          });
                        },
                        child: Text('7'),
                      ),
                      SizedBox(width: 10),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            _selectedPlayers = 8;
                          });
                        },
                        child: Text('8'),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Wie heißen die Spieler?',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  SizedBox(height: 10),
                  for (int i = 1; i <= _selectedPlayers; i++)
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4.0),
                      child: TextFormField(
                        maxLength: 10,
                        initialValue: _selectedPlayerNames[i - 1],
                        onChanged: (value) {
                          _selectedPlayerNames[i - 1] = value;
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Spieler $i',
                        ),
                      ),
                    ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _screen = 1;
                      });
                    },
                    child: Text('Weiter'),
                  ),
                ],
              )
            : _screen == 1
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(height: 20),
                  Text(
                    'Auf welchem Schlachtfeld wollt ihr spielen?',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height - 300,
                    child: MapsList(
                      onMapTap: (map) {
                        setState(() {
                          _selectedMap = map;
                          _screen = 2;
                        });
                      },
                    ),
                  ),
                ],
              )
            : _screen == 2
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(height: 20),
                  Text(
                    'Würfelt eure Rebellen',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  SizedBox(height: 10),
                  for (int i = 1; i <= _selectedPlayers; i++)
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              '${_selectedPlayerNames[i - 1]}: ${_selectedRebels[i - 1]?.name ?? '?'}',
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                _selectedRebels[i - 1] =
                                    _xxxStateBla.value[Random().nextInt(
                                      _xxxStateBla.value.length,
                                    )];
                              });
                            },
                            child: Text('Würfeln'),
                          ),
                        ],
                      ),
                    ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      context.replace(
                        GameplayScreen.routePath,
                        extra: GamePlayConfig(
                          map: _selectedMap!,
                          players: List.generate(
                            _selectedPlayers,
                            (index) => PlayerState(
                              name: _selectedPlayerNames[index],
                              rebel: _selectedRebels[index]!,
                            ),
                          ),
                        ),
                      );
                    },
                    child: Text('Spiel starten'),
                  ),
                ],
              )
            : SizedBox(child: Text('Screen: $_screen')),
      ),
    );
  }
}
