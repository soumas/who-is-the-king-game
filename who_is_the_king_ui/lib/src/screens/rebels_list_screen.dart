import 'package:flutter/material.dart';
import 'package:who_is_the_king_ui/src/features/rebels/ui/rebels_list.dart';

class RebelsListScreen extends StatelessWidget {
  const RebelsListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Rebellen')),
      body: const RebelsList(),
    );
  }
}
