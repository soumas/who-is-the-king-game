import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:who_is_the_king_ui/src/app_state.dart';
import 'package:who_is_the_king_ui/src/common/widgets/wit_scaffold.dart';
import 'package:who_is_the_king_ui/src/screens/about_screen.dart';
import 'package:who_is_the_king_ui/src/screens/maps_list_screen.dart';
import 'package:who_is_the_king_ui/src/screens/prepare_game_wizard_screen.dart';
import 'package:who_is_the_king_ui/src/screens/rebels_list_screen.dart';
import 'package:who_is_the_king_ui/src/screens/settings_screen.dart';

class StartScreen extends StatelessWidget {
  static String routePath = '/';

  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return WitScaffold(
      fullOpacityBackground: true,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Who is the King',
              style: Theme.of(
                context,
              ).textTheme.displayLarge?.copyWith(color: Colors.white),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Text(
                'Es war einmal Glorisland, regiert von dem grausamen König Aarus, der sein Volk unterdrückte und töten ließ. Erick beschloss, ihn zu stürzen, und sammelte Rebellen um sich. Ihr erster Angriff auf die Burg scheiterte, doch mit Hilfe von Monstern wagten sie einen zweiten Versuch und besiegten den König. Danach brach jedoch Streit aus, wer nun herrschen sollte – und aus dem Sieg entstand ein neuer Kampf um die Macht.',
                style: Theme.of(
                  context,
                ).textTheme.bodyLarge?.copyWith(color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 20),
            ListTile(
              tileColor: Colors.black.withAlpha(128),
              title: Text(
                'Neues Spiel',
                style: Theme.of(
                  context,
                ).textTheme.titleLarge?.copyWith(color: Colors.white),
                textAlign: TextAlign.center,
              ),
              trailing: Icon(Icons.chevron_right, color: Colors.white),
              onTap: () {
                context.push(PrepareGameWizardScreen.routePath);
              },
            ),
            SizedBox(height: 20),
            ListTile(
              tileColor: Colors.black.withAlpha(128),
              title: Text(
                'Die Rebellen',
                style: Theme.of(
                  context,
                ).textTheme.titleLarge?.copyWith(color: Colors.white),
                textAlign: TextAlign.center,
              ),
              trailing: Icon(Icons.chevron_right, color: Colors.white),
              onTap: () {
                context.push(RebelsListScreen.routePath);
              },
            ),
            SizedBox(height: 4),
            ListTile(
              tileColor: Colors.black.withAlpha(128),
              title: Text(
                'Schlachtfelder',
                style: Theme.of(
                  context,
                ).textTheme.titleLarge?.copyWith(color: Colors.white),
                textAlign: TextAlign.center,
              ),
              trailing: Icon(Icons.chevron_right, color: Colors.white),
              onTap: () {
                context.push(MapsListScreen.routePath);
              },
            ),
            SizedBox(height: 20),
            ListTile(
              tileColor: Colors.black.withAlpha(128),
              title: Text(
                'Einstellungen',
                style: Theme.of(
                  context,
                ).textTheme.titleLarge?.copyWith(color: Colors.white),
                textAlign: TextAlign.center,
              ),
              trailing: Icon(Icons.chevron_right, color: Colors.white),
              onTap: () {
                context.push(SettingsScreen.routePath);
              },
            ),
            SizedBox(height: 4),
            ListTile(
              tileColor: Colors.black.withAlpha(128),
              title: Text(
                'Über das Spiel',
                style: Theme.of(
                  context,
                ).textTheme.titleLarge?.copyWith(color: Colors.white),
                textAlign: TextAlign.center,
              ),
              trailing: Icon(Icons.chevron_right, color: Colors.white),
              onTap: () {
                context.push(AboutScreen.routePath);
              },
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
