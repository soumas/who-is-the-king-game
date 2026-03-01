import 'package:flutter/material.dart';
import 'package:who_is_the_king_ui/src/screens/start_screen.dart';

void main() {
  runApp(const WhoIsTheKingGame());
}

class WhoIsTheKingGame extends StatelessWidget {
  const WhoIsTheKingGame({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: const StartScreen());
  }
}
