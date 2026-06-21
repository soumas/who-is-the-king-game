import 'package:flutter/material.dart';
import 'package:who_is_the_king_ui/src/common/widgets/wit_scaffold.dart';
import 'package:who_is_the_king_ui/src/features/maps/ui/maps_list.dart';

class MapsListScreen extends StatelessWidget {
  static const String routePath = '/maps';

  const MapsListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return WitScaffold(title: 'Karten', body: const MapsList());
  }
}
