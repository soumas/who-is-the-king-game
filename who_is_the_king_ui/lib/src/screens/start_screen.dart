import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:who_is_the_king_ui/src/common/widgets/wit_scaffold.dart';
import 'package:who_is_the_king_ui/src/screens/about_screen.dart';
import 'package:who_is_the_king_ui/src/screens/maps_list_screen.dart';
import 'package:who_is_the_king_ui/src/screens/prepare_game_wizard_screen.dart';
import 'package:who_is_the_king_ui/src/screens/rebels_list_screen.dart';
import 'package:who_is_the_king_ui/src/screens/settings_screen.dart';
import 'package:who_is_the_king_ui/src/screens/story_screen.dart';

class StartScreen extends StatelessWidget {
  static String routePath = '/';

  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return WitScaffold(
      fullOpacityBackground: true,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        children: [
          Image.asset(
            'assets/images/start_crone.png',
            height: 250,
            fit: BoxFit.contain,
          ),
          Text(
            'Who is the King',
            style: Theme.of(
              context,
            ).textTheme.displayLarge?.copyWith(color: Colors.white),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 40),
          ElevatedButton(
            onPressed: () {
              context.push(PrepareGameWizardScreen.routePath);
            },
            child: Text(
              'Neues Spiel',
              style: Theme.of(
                context,
              ).textTheme.titleLarge?.copyWith(color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 40),
          ElevatedButton(
            onPressed: () {
              context.push(StoryScreen.routePath);
            },
            child: Text(
              'Es war einmal...',
              style: Theme.of(
                context,
              ).textTheme.titleLarge?.copyWith(color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 4),
          ElevatedButton(
            child: Text(
              'Die Rebellen',
              style: Theme.of(
                context,
              ).textTheme.titleLarge?.copyWith(color: Colors.white),
              textAlign: TextAlign.center,
            ),
            onPressed: () {
              context.push(RebelsListScreen.routePath);
            },
          ),
          SizedBox(height: 4),
          ElevatedButton(
            onPressed: () {
              context.push(MapsListScreen.routePath);
            },
            child: Text(
              'Schlachtfelder',
              style: Theme.of(
                context,
              ).textTheme.titleLarge?.copyWith(color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 40),
          ElevatedButton(
            onPressed: () {
              context.push(SettingsScreen.routePath);
            },
            child: Text(
              'Einstellungen',
              style: Theme.of(
                context,
              ).textTheme.titleLarge?.copyWith(color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 4),
          ElevatedButton(
            onPressed: () {
              context.push(AboutScreen.routePath);
            },
            child: Text(
              'Über das Spiel',
              style: Theme.of(
                context,
              ).textTheme.titleLarge?.copyWith(color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
