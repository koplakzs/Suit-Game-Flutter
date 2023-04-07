import 'package:flutter/material.dart';
import 'package:suit_game_app/screen/main_screen.dart';
import 'package:suit_game_app/screen/normal_mode.dart';
import 'package:suit_game_app/screen/hard_mode.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const MainScreen(),
        '/normal': (context) => const NormalMode(),
        '/hard': (context) => const HardMode()
      },
    );
  }
}
