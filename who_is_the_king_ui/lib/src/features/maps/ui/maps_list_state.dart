import 'package:flutter/material.dart';
import 'package:who_is_the_king_core/who_is_the_king_core.dart';

class MapsListState extends ValueNotifier<List<WtkMap>> {
  MapsListState() : super([]);

  void init() {
    value = [DarkCellar(), DarkCellar(), DarkCellar(), DarkCellar()]
      ..sort((a, b) => a.name.compareTo(b.name));
  }
}
