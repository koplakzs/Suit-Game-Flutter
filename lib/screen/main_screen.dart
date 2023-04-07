import 'package:flutter/material.dart';
import 'package:suit_game_app/screen/theme.dart';
import 'package:suit_game_app/widget/button.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppTheme.colorBackground,
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
                margin: const EdgeInsets.only(bottom: 20),
                child: Button(
                  text: "Normal Mode",
                  onPressed: () => Navigator.pushNamed(context, '/normal'),
                  color: AppTheme.colorButton,
                  textColor: AppTheme.colorText,
                )),
            Container(
                margin: const EdgeInsets.only(top: 20),
                child: Button(
                  text: "Hard Mode",
                  onPressed: () => Navigator.pushNamed(context, '/hard'),
                  color: AppTheme.colorButton,
                  textColor: AppTheme.colorText,
                )),
          ]),
        ),
      ),
    );
  }
}
