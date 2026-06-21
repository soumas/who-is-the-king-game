import 'package:flutter/material.dart';
import 'package:who_is_the_king_ui/src/common/widgets/wit_scaffold.dart';

class AboutScreen extends StatelessWidget {
  static const String routePath = '/about';

  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return WitScaffold(
      title: 'Über das Spiel',
      body: const Placeholder(child: Text('About')),
    );
  }
}
