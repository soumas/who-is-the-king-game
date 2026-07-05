import 'package:flutter/material.dart';
import 'package:who_is_the_king_ui/src/common/widgets/wit_scaffold.dart';

class StoryScreen extends StatelessWidget {
  static String routePath = '/story';

  const StoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return WitScaffold(
      title: 'Es war einmal...',
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          'Es war einmal Glorisland, regiert von dem grausamen König Aarus, der sein Volk unterdrückte und töten ließ. Erick beschloss, ihn zu stürzen, und sammelte Rebellen um sich. Ihr erster Angriff auf die Burg scheiterte, doch mit Hilfe von Monstern wagten sie einen zweiten Versuch und besiegten den König. Danach brach jedoch Streit aus, wer nun herrschen sollte – und aus dem Sieg entstand ein neuer Kampf um die Macht.',
          style: Theme.of(context).textTheme.titleLarge,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
