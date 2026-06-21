import 'package:go_router/go_router.dart';
import 'package:who_is_the_king_ui/src/screens/about_screen.dart';
import 'package:who_is_the_king_ui/src/screens/maps_list_screen.dart';
import 'package:who_is_the_king_ui/src/screens/prepare_game_wizard_screen.dart';
import 'package:who_is_the_king_ui/src/screens/rebels_list_screen.dart';
import 'package:who_is_the_king_ui/src/screens/settings_screen.dart';
import 'package:who_is_the_king_ui/src/screens/start_screen.dart';

final GoRouter router = GoRouter(
  initialLocation: '/',
  routes: <RouteBase>[
    GoRoute(
      path: StartScreen.routePath,
      builder: (context, state) => const StartScreen(),
    ),
    GoRoute(
      path: PrepareGameWizardScreen.routePath,
      builder: (context, state) => const PrepareGameWizardScreen(),
    ),
    GoRoute(
      path: RebelsListScreen.routePath,
      builder: (context, state) => const RebelsListScreen(),
    ),
    GoRoute(
      path: MapsListScreen.routePath,
      builder: (context, state) => const MapsListScreen(),
    ),
    GoRoute(
      path: AboutScreen.routePath,
      builder: (context, state) => const AboutScreen(),
    ),
    GoRoute(
      path: SettingsScreen.routePath,
      builder: (context, state) => const SettingsScreen(),
    ),
  ],
);
