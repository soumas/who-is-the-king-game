import 'package:flutter/material.dart';
import 'package:who_is_the_king_ui/src/common/widgets/wit_scaffold.dart';

class PrepareGameWizardScreen extends StatelessWidget {
  static String routePath = '/prepare-game-wizard';

  const PrepareGameWizardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return WitScaffold(
      title: 'Neues Spiel',
      body: Center(child: Text('Prepare Game Wizard ScreenXXX')),
    );
  }
}
