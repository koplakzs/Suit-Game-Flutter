import 'package:flutter/material.dart';
import 'package:suit_game_app/screen/theme.dart';

class ScoreStatus extends StatefulWidget {
  const ScoreStatus({Key? key, required this.komp, required this.you})
      : super(key: key);

  final int komp, you;
  @override
  State<ScoreStatus> createState() => _ScoreStatusState();
}

class _ScoreStatusState extends State<ScoreStatus> {
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.only(bottom: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Komputer = ${widget.komp.toString()}',
              style: const TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'You = ${widget.you.toString()}',
              style: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
          ],
        ));
  }
}
