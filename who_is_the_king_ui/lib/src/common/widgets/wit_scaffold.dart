import 'package:flutter/material.dart';

class WitScaffold extends StatelessWidget {
  const WitScaffold({
    super.key,
    required this.body,
    this.title,
    this.fullOpacityBackground = false,
  });

  final Widget body;
  final bool fullOpacityBackground;
  final String? title;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: Stack(
        children: [
          Opacity(
            opacity: fullOpacityBackground ? 1.0 : 0.3,
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/start_bg.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SafeArea(
            child: Scaffold(
              backgroundColor: Colors.transparent,
              appBar: title != null
                  ? AppBar(
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                      title: Text(title!),
                    )
                  : null,
              body: body,
            ),
          ),
        ],
      ),
    );
  }
}
