import 'package:flutter/material.dart';
import 'package:who_is_the_king_ui/src/common/widgets/wit_scaffold.dart';
import 'package:who_is_the_king_ui/src/features/rebels/ui/rebels_list.dart';

class RebelsListScreen extends StatelessWidget {
  static const String routePath = '/rebels';

  const RebelsListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return WitScaffold(title: 'Rebellen', body: const RebelsList());
  }
}
