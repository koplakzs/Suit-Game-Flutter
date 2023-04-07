import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:suit_game_app/screen/theme.dart';

class Komputer extends StatefulWidget {
  const Komputer({Key? key, required this.image}) : super(key: key);

  final String image;

  @override
  State<Komputer> createState() => _KomputerState();
}

class _KomputerState extends State<Komputer> {
  int _index = 0;
  final List<String> _images = [
    AppTheme.batu,
    AppTheme.gunting,
    AppTheme.kertas
  ];

  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(milliseconds: 300), (timer) {
      setState(() {
        _index = (_index + 1) % _images.length;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text(
            "Komputer",
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic),
          ),
          Image.asset(
            widget.image.isEmpty ? _images[_index] : widget.image,
            width: 110,
            height: 110,
          )
        ],
      ),
    );
  }
}
