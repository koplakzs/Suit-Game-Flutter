import 'dart:math';
import 'package:flutter/material.dart';
import 'package:suit_game_app/screen/theme.dart';

class Play {
  int komp = 0;
  int you = 0;
  String imageKomp = "";

  void display(String value, BuildContext context) {
    String kompValue = random();
    switch (value) {
      case "Batu":
        if (kompValue == 'Kertas') {
          komp += 1;
          win(context, 'Auto Losee Ini Cuyy', imageKomp, AppTheme.batu);
        } else if (kompValue == 'Gunting') {
          you += 1;
          win(context, 'Winn Ini Coyyy', imageKomp, AppTheme.batu);
        } else {
          win(context, 'Seri Ini Mah', imageKomp, AppTheme.batu);
        }
        break;
      case "Gunting":
        if (kompValue == 'Kertas') {
          you += 1;
          win(context, 'Menang Ini Coy', imageKomp, AppTheme.gunting);
        } else if (kompValue == 'Batu') {
          komp += 1;
          win(context, 'Sad Sih Kalah', imageKomp, AppTheme.gunting);
        } else {
          win(context, 'Seri Cuyy', imageKomp, AppTheme.gunting);
        }
        break;
      default:
        if (kompValue == 'Batu') {
          you += 1;
          win(context, 'Auto Menang Ini', imageKomp, AppTheme.kertas);
        } else if (kompValue == 'Gunting') {
          komp += 1;
          win(context, 'Yahhaha, Kalah', imageKomp, AppTheme.kertas);
        } else {
          win(context, 'Ngk Bosen Seri Kah', imageKomp, AppTheme.kertas);
        }
        break;
    }
  }

  void displayHard(String value, BuildContext context) {
    switch (value) {
      case "Batu":
        String kompValue = randomHard(AppTheme.kertas, AppTheme.gunting,
            AppTheme.batu, 'Kertas', 'Gunting', 'Batu');
        if (kompValue == 'Kertas') {
          komp += 1;
          win(context, 'Auto Losee Ini Cuyy', imageKomp, AppTheme.batu);
        } else if (kompValue == 'Gunting') {
          you += 1;
          win(context, 'Winn Ini Coyyy', imageKomp, AppTheme.batu);
        } else {
          win(context, 'Seri Ini Mah', imageKomp, AppTheme.batu);
        }
        break;
      case "Gunting":
        String kompValue = randomHard(AppTheme.batu, AppTheme.kertas,
            AppTheme.gunting, 'Batu', 'Kertas', 'Gunting');
        if (kompValue == 'Kertas') {
          you += 1;
          win(context, 'Menang Ini Coy', imageKomp, AppTheme.gunting);
        } else if (kompValue == 'Batu') {
          komp += 1;
          win(context, 'Sad Sih Kalah', imageKomp, AppTheme.gunting);
        } else {
          win(context, 'Seri Cuyy', imageKomp, AppTheme.gunting);
        }
        break;
      default:
        String kompValue = randomHard(AppTheme.gunting, AppTheme.batu,
            AppTheme.kertas, 'Gunting', 'Batu', 'Kertas');
        if (kompValue == 'Batu') {
          you += 1;
          win(context, 'Auto Menang Ini', imageKomp, AppTheme.kertas);
        } else if (kompValue == 'Gunting') {
          komp += 1;
          win(context, 'Yahhaha, Kalah', imageKomp, AppTheme.kertas);
        } else {
          win(context, 'Ngk Bosen Seri Kah', imageKomp, AppTheme.kertas);
        }
        break;
    }
  }

  random() {
    double random = Random().nextDouble();
    if (random < 0.34) {
      imageKomp = AppTheme.batu;
      return 'Batu';
    } else if (random < 0.69) {
      imageKomp = AppTheme.gunting;
      return 'Gunting';
    } else {
      imageKomp = AppTheme.kertas;
      return 'Kertas';
    }
  }

  randomHard(String img1, String img2, String img3, String value1,
      String value2, String value3) {
    double random = Random().nextDouble();
    if (random < 0.7) {
      imageKomp = img1;
      return value1;
    } else if (random < 0.85) {
      imageKomp = img2;
      return value2;
    } else {
      imageKomp = img3;
      return value3;
    }
  }

  win(BuildContext context, String text, String komp, String you) {
    imageKomp = '';

    showDialog(
        context: context,
        builder: (BuildContext context) => AlertDialog(
              title: Center(child: Text('$text !!!')),
              content: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset(
                    you,
                    width: 50,
                    height: 50,
                  ),
                  const Text("VS"),
                  Image.asset(
                    komp,
                    width: 50,
                    height: 50,
                  )
                ],
              ),
              actions: [
                TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: const Text('Gaskeun'),
                ),
              ],
            ));
  }
}
