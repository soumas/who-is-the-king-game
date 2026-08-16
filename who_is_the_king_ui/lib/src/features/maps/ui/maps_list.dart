import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:who_is_the_king_core/who_is_the_king_core.dart';
import 'package:who_is_the_king_ui/src/features/maps/ui/map_preview.dart';
import 'package:who_is_the_king_ui/src/features/maps/ui/maps_list_state.dart';

class MapsList extends StatelessWidget {
  const MapsList({super.key, this.onMapTap});
  final Function(WtkMap)? onMapTap;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => MapsListState()..init(),
      child: MapsListView(onMapTap: onMapTap),
    );
  }
}

class MapsListView extends StatelessWidget {
  const MapsListView({super.key, this.onMapTap});
  final Function(WtkMap)? onMapTap;

  @override
  Widget build(BuildContext context) {
    final state = context.watch<MapsListState>();
    return ListView(
      children: state.value
          .map(
            (wtkMap) => GestureDetector(
              onTap: () {
                onMapTap?.call(wtkMap);
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, bottom: 4.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          wtkMap.name,
                          style: Theme.of(context).textTheme.titleLarge
                              ?.copyWith(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Anzahl Spieler: ${wtkMap.numPlayersMin} - ${wtkMap.numPlayersMax}',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        Text(
                          'Beschreibung: ${wtkMap.description}',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        MapPreview(map: wtkMap),
                      ],
                    ),
                    SizedBox(height: 40),
                  ],
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}
