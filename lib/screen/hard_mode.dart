import 'package:flutter/material.dart';
import 'package:suit_game_app/widget/play_screen.dart';

class HardMode extends StatefulWidget {
  const HardMode({super.key});

  @override
  State<HardMode> createState() => _HardModeState();
}

class _HardModeState extends State<HardMode> {
  @override
  Widget build(BuildContext context) {
    return const PlayScreen(mode: false);
  }
}
