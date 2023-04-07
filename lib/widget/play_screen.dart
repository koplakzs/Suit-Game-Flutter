import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:suit_game_app/models/core.dart';
import 'package:suit_game_app/screen/theme.dart';
import 'package:suit_game_app/widget/button_suit.dart';
import 'package:suit_game_app/widget/komputer.dart';
import 'package:suit_game_app/widget/score.dart';

class PlayScreen extends StatefulWidget {
  const PlayScreen({Key? key, required this.mode}) : super(key: key);

  final bool mode;
  @override
  State<PlayScreen> createState() => _PlayScreenState();
}

class _PlayScreenState extends State<PlayScreen> {
  final Play play = Play();
  _onPressed(String value) {
    setState(() {
      play.display(value, context);
    });
  }

  _onPressedHard(String value) {
    setState(() {
      play.displayHard(value, context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: widget.mode
              ? AppTheme.colorBackground
              : AppTheme.colorBackgroundHard,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    flex: 1,
                    child: ScoreStatus(komp: play.komp, you: play.you)),
                Expanded(
                    flex: 4,
                    child: SizedBox(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Komputer(image: play.imageKomp),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ButtonSuit(
                                  onPressed:
                                      widget.mode ? _onPressed : _onPressedHard,
                                  title: "Batu",
                                  image: AppTheme.batu),
                              ButtonSuit(
                                  onPressed:
                                      widget.mode ? _onPressed : _onPressedHard,
                                  title: "Gunting",
                                  image: AppTheme.gunting),
                              ButtonSuit(
                                  onPressed:
                                      widget.mode ? _onPressed : _onPressedHard,
                                  title: "Kertas",
                                  image: AppTheme.kertas)
                            ],
                          ),
                        ],
                      ),
                    ))
              ],
            ),
          )),
    );
  }
}
