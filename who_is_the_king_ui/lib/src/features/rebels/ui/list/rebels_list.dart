import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:who_is_the_king_ui/src/features/rebels/ui/detail/rebel_image.dart';
import 'package:who_is_the_king_ui/src/features/rebels/ui/list/rebels_list_state.dart';

class RebelsList extends StatelessWidget {
  const RebelsList({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => RebelsListState()..init(),
      child: RebelsListView(),
    );
  }
}

class RebelsListView extends StatelessWidget {
  const RebelsListView({super.key});

  @override
  Widget build(BuildContext context) {
    final state = context.watch<RebelsListState>();

    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Wrap(
          children: state.value
              .map<Widget>(
                (rebel) => Padding(
                  padding: const EdgeInsets.only(left: 8.0, bottom: 4.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            rebel.name,
                            style: Theme.of(context).textTheme.titleLarge
                                ?.copyWith(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(width: 200, child: RebelImage(rebel: rebel)),
                          Text(
                            'Allgemein',
                            style: Theme.of(context).textTheme.titleMedium
                                ?.copyWith(fontWeight: FontWeight.bold),
                          ),
                          Text('Leben: ${rebel.hearts}'),
                          Text('Multi Attack Kosten: ${rebel.multiAttackCost}'),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Standardangriff',
                            style: Theme.of(context).textTheme.titleMedium
                                ?.copyWith(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Wände durchdringen: ${rebel.defaultAttack.canPenetrateWalls}',
                          ),
                          Text(
                            'Maximale Wurfweite: ${rebel.defaultAttack.maxThrowingDistance}',
                          ),
                          Text('Schadensbereich:'),
                          DamageAreaDisplay(
                            damageArea: rebel.defaultAttack.damageArea,
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Multi',
                            style: Theme.of(context).textTheme.titleMedium
                                ?.copyWith(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Wände durchdringen: ${rebel.multiAttack.canPenetrateWalls}',
                          ),
                          Text(
                            'Maximale Wurfweite: ${rebel.multiAttack.maxThrowingDistance}',
                          ),
                          Text(
                            'Bewegung: ${rebel.multiAttack.minMoveDistance} - ${rebel.multiAttack.maxMoveDistance}',
                          ),
                          Text('Schadensbereich:'),
                          DamageAreaDisplay(
                            damageArea: rebel.multiAttack.damageArea,
                          ),
                        ],
                      ),
                      SizedBox(height: 40),
                    ],
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}

class DamageAreaDisplay extends StatelessWidget {
  final List<Point<num>> damageArea;
  final double itemBoxSize = 20;

  const DamageAreaDisplay({super.key, required this.damageArea});

  @override
  Widget build(BuildContext context) {
    final xMin = damageArea.map((p) => p.x).reduce(min);
    final xMax = damageArea.map((p) => p.x).reduce(max);
    final yMin = damageArea.map((p) => p.y).reduce(min);
    final yMax = damageArea.map((p) => p.y).reduce(max);
    final itemsPerRow = xMin.abs() + xMax.abs() + 1;

    List<Widget> itemWidgets = [];
    for (var y = yMax; y >= yMin; y--) {
      for (var x = xMin; x <= xMax; x++) {
        final isInDamageArea = damageArea.any((p) => p.x == x && p.y == y);
        itemWidgets.add(
          SizedBox(
            width: itemBoxSize,
            height: itemBoxSize,
            child: Padding(
              padding: EdgeInsets.all(1),
              child: Container(
                color: isInDamageArea
                    ? ((x == 0 && y == 0)
                          ? Colors.red
                          : Colors.red.withAlpha(128))
                    : Colors.transparent,
              ),
            ),
          ),
        );
      }
    }

    return SizedBox(
      width: itemBoxSize * itemsPerRow.toDouble(),
      child: Wrap(children: itemWidgets),
    );
  }
}
