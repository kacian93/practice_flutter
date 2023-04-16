import 'package:flutter/cupertino.dart';

class Button extends StatelessWidget {
  final String text;
  final Color bgcolor;
  final Color textColor;

  Button({required this.text, required this.bgcolor, required this.textColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: bgcolor,
          borderRadius: BorderRadius.circular(45)),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 40,
        ),
        child: Text(
          text,
          style: TextStyle(color: textColor, fontSize: 22),
        ),
      ),
    );
  }

}