import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:who_is_the_king_ui/src/features/maps/ui/maps_list.dart';
import 'package:who_is_the_king_ui/src/screens/rebels_list_screen.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/start_bg.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Who is the king?',
                  style: TextStyle(
                    fontSize: 44,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const RebelsListScreen(),
                      ),
                    );
                  },
                  child: Text('Rebellen'),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      barrierColor: Colors.transparent,
                      barrierDismissible: false,
                      barrierLabel: 'Karten',
                      builder: (context) {
                        return BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                          child: Container(
                            margin: const EdgeInsets.all(32.0),
                            color: Colors.white.withAlpha(200),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'Karten',
                                      style: Theme.of(
                                        context,
                                      ).textTheme.headlineMedium,
                                    ),
                                    IconButton(
                                      icon: Icon(Icons.close),
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                    ),
                                  ],
                                ),
                                Expanded(child: const MapsList()),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                    // Navigator.of(context).push(
                    //   MaterialPageRoute(
                    //     builder: (context) => const MapsListScreen(),
                    //   ),
                    // );
                  },
                  child: Text('Karten'),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    showGeneralDialog(
                      context: context,
                      pageBuilder: (context, animation, secondaryAnimation) {
                        return AlertDialog(
                          title: Text('Geschichte'),
                          content: Text(
                            'Es war einmal das Land Glorisland, regiert von dem grausamen König Aarus, der sein Volk unterdrückte und töten ließ. Erick beschloss, ihn zu stürzen, und sammelte Rebellen um sich. Ihr erster Angriff auf die Burg scheiterte, doch mit Hilfe von Monstern wagten sie einen zweiten Versuch und besiegten den König. Danach brach jedoch Streit aus, wer herrschen sollte – und aus dem Sieg entstand ein neuer Kampf um die Macht.',
                          ),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text('Schließen'),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: Text('Geschichte'),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    showAboutDialog(
                      context: context,
                      applicationName: 'Who is the king?',
                      applicationVersion: '1.0.0',
                      applicationLegalese:
                          '© 2024 Who is the king? All rights reserved.',
                    );
                  },
                  child: Text('Über das Spiel'),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    showGeneralDialog(
                      context: context,
                      pageBuilder: (context, animation, secondaryAnimation) {
                        return AlertDialog(
                          title: Text('Play'),
                          content: Text('Start the game!'),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text('Cancel'),
                            ),
                            TextButton(
                              onPressed: () {
                                // Start the game logic here
                                Navigator.of(context).pop();
                              },
                              child: Text('Start'),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: Text('Spiel starten'),
                ),
              ],
            ),
          ),
          // Positioned(
          //   left: 20,
          //   top: 20,
          //   child: AvifImage.asset(
          //     'assets/images/start_witk_logo.avif',
          //     width: 250,
          //   ),
          // ),
        ],
      ),
    );
  }
}
