import 'package:flutter/material.dart';
import 'package:who_is_the_king_core/who_is_the_king_core.dart';

class RebelsListState extends ValueNotifier<List<Character>> {
  RebelsListState() : super([]);

  void init() {
    value = [Zok(), Glug(), Phillip(), Kib()]..sort((a, b) => a.name.compareTo(b.name));
  }
}
