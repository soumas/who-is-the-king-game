import 'package:flutter/material.dart';
import 'package:who_is_the_king_ui/src/app.dart';
import 'package:who_is_the_king_ui/src/init/app_init.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initApp();
  runApp(const App());
}
