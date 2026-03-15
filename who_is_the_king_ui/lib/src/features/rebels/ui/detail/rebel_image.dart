import 'package:flutter/material.dart';
import 'package:flutter_avif/flutter_avif.dart';
import 'package:who_is_the_king_core/who_is_the_king_core.dart';

class RebelImage extends StatefulWidget {
  const RebelImage({super.key, required this.rebel});

  final Rebel rebel;

  @override
  State<RebelImage> createState() => _RebelImageState();
}

class _RebelImageState extends State<RebelImage> {
  var _visible = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 1), () {
      setState(() {
        _visible = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _visible = !_visible;
        });
      },
      child: Stack(
        children: [
          AvifImage.asset(_pathBg, fit: BoxFit.contain),
          AnimatedOpacity(
            opacity: _visible ? 1 : 0,
            duration: Duration(milliseconds: 1000),
            child: AvifImage.asset(_path, fit: BoxFit.contain),
          ),
        ],
      ),
    );
  }

  String get _path =>
      'assets/images/rebels/${widget.rebel.runtimeType.toString().toLowerCase()}/${widget.rebel.runtimeType.toString().toLowerCase()}.avif';

  String get _pathBg =>
      'assets/images/rebels/${widget.rebel.runtimeType.toString().toLowerCase()}/${widget.rebel.runtimeType.toString().toLowerCase()}_bg.avif';
}
