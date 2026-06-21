import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:who_is_the_king_ui/src/app_state.dart';
import 'package:who_is_the_king_ui/src/common/theme/wit_themes.dart';
import 'package:who_is_the_king_ui/src/router.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [Provider<AppState>(create: (_) => AppState()..init())],
      builder: (context, child) {
        return ListenableBuilder(
          listenable: Listenable.merge([context.read<AppState>().themeMode]),
          builder: (context, child) {
            final appState = context.read<AppState>();
            return MaterialApp.router(
              debugShowCheckedModeBanner: false,
              theme: witThemeLight,
              darkTheme: witThemeDark,
              themeMode: appState.themeMode.value,
              routerConfig: router,
            );
          },
        );
      },
    );
  }
}
