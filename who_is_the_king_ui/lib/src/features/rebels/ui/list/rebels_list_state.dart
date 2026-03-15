import 'package:flutter/material.dart';
import 'package:who_is_the_king_core/who_is_the_king_core.dart';

class RebelsListState extends ValueNotifier<List<Rebel>> {
  RebelsListState() : super([]);

  void init() {
    value = [
      Air(),
      Bobomp(),
      Cris(),
      Erick(),
      Gab(),
      Glug(),
      Harry(),
      Kib(),
      Klomix(),
      Koro(),
      Lili(),
      MrFreeze(),
      Penpen(),
      Phillip(),
      Sarah(),
      Star(),
      Steve(),
      Tillo(),
      Tom(),
      Zok(),
    ]..sort((a, b) => a.name.compareTo(b.name));
  }
}
