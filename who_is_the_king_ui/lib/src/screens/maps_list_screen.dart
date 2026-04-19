import 'package:flutter/material.dart';
import 'package:who_is_the_king_ui/src/features/maps/ui/maps_list.dart';

class MapsListScreen extends StatelessWidget {
  const MapsListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Karten')),
      body: const MapsList(),
    );
  }
}
