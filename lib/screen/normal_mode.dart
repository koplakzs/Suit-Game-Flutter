import 'package:flutter/material.dart';
import 'package:suit_game_app/widget/play_screen.dart';

class NormalMode extends StatefulWidget {
  const NormalMode({super.key});

  @override
  State<NormalMode> createState() => _NormalModeState();
}

class _NormalModeState extends State<NormalMode> {
  @override
  Widget build(BuildContext context) {
    return const PlayScreen(mode: true);
  }
}
