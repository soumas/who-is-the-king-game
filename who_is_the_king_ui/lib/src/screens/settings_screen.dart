import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:who_is_the_king_ui/src/app_state.dart';
import 'package:who_is_the_king_ui/src/common/widgets/wit_scaffold.dart';

class SettingsScreen extends StatelessWidget {
  static const String routePath = '/settings';

  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return WitScaffold(
      title: 'Einstellungen',
      body: ListView(
        children: [
          ListTile(
            title: const Text('Toggle Theme'),
            onTap: () {
              context.read<AppState>().themeMode.value =
                  context.read<AppState>().themeMode.value == ThemeMode.light
                  ? ThemeMode.dark
                  : ThemeMode.light;
            },
          ),
        ],
      ),
    );
  }
}
