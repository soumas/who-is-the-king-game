import 'dart:math';

import 'package:flutter/material.dart';
import 'package:who_is_the_king_core/who_is_the_king_core.dart';

class MapPreview extends StatelessWidget {
  const MapPreview({super.key, required this.map});

  final double itemBoxSize = 20;
  final WtkMap map;

  @override
  Widget build(BuildContext context) {
    List<Widget> itemWidgets = [];
    for (var y = 0; y < map.sizeY; y++) {
      for (var x = 0; x < map.sizeX; x++) {
        itemWidgets.add(
          SizedBox(
            width: itemBoxSize,
            height: itemBoxSize,
            child: Padding(
              padding: EdgeInsets.all(1),
              child: Container(
                color: map.getObj(Point(x, y)) is Brick
                    ? Colors.grey
                    : Colors.grey.withAlpha(100),
              ),
            ),
          ),
        );
      }
    }

    return SizedBox(
      width: itemBoxSize * map.sizeX.toDouble(),
      child: Wrap(children: itemWidgets),
    );
  }
}
