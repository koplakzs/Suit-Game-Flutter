import 'package:flutter/material.dart';

class ButtonSuit extends StatelessWidget {
  const ButtonSuit(
      {Key? key,
      required this.onPressed,
      required this.image,
      required this.title})
      : super(key: key);

  final String image;
  final String title;
  final void Function(String) onPressed;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onPressed(title),
      child: Container(
        margin: const EdgeInsets.all(20),
        width: 60,
        height: 60,
        child: Image.asset(image),
      ),
    );
  }
}
