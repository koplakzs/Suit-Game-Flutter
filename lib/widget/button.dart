import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button(
      {Key? key,
      this.color,
      this.textColor,
      required this.text,
      required this.onPressed})
      : super(key: key);

  final String text;
  final Color? color, textColor;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          padding: const EdgeInsets.all(20)),
      child: Text(
        text,
        style: TextStyle(color: textColor, fontSize: 24),
      ),
    );
  }
}
