import 'package:flutter/material.dart';
import 'package:who_is_the_king_core/who_is_the_king_core.dart';

class RebelsListState extends ValueNotifier<List<Rebel>> {
  RebelsListState() : super([]);

  void init() {
    value = [
      Air(),
      Ben(),
      Bobomp(),
      Cris(),
      Erick(),
      Flowi(),
      Gab(),
      Glug(),
      Harry(),
      Kib(),
      Klemens(),
      Klomix(),
      Koro(),
      Lee(),
      Lili(),
      MrFreeze(),
      Parrow(),
      Paul(),
      Penpen(),
      Phillip(),
      Pill(),
      Sarah(),
      Star(),
      Steve(),
      Tillo(),
      Tom(),
      Toothi(),
      Woki(),
      Yingbum(),
      Zok(),
    ]..sort((a, b) => a.name.compareTo(b.name));
  }
}
