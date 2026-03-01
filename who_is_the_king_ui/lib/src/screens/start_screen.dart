import 'package:flutter/material.dart';
import 'package:who_is_the_king_ui/src/screens/rebels_list_screen.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Who is the King?')),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const RebelsListScreen()));
            },
            child: const Text('Rebellen anzeigen'),
          ),
        ],
      ),
    );
  }
}
