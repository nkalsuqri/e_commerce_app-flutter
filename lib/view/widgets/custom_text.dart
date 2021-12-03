import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color color;
  final bool bold;
  final Alignment algiment;
  CustomText(
      {this.text = '',
      this.fontSize = 16,
      this.color = Colors.black,
      this.bold = true,
      this.algiment = Alignment.center});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: algiment,
      child: Text(
        text,
        style: TextStyle(
            color: color,
            fontSize: fontSize,
            fontWeight: bold ? FontWeight.bold : FontWeight.normal),
      ),
    );
  }
}
