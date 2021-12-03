import 'package:e_commerce_app/view/widgets/custom_text.dart';
import 'package:flutter/material.dart';

import '../../constance.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color color;
  final bool bold;
  final Color backgrondcolor;
  final Function onpressed;

  CustomButton(
      {this.text,
      this.fontSize,
      this.color,
      this.bold,
      this.backgrondcolor,
      this.onpressed});

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: onpressed,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.all(10),
      child: CustomText(
          text: text,
          fontSize: fontSize,
          color: color,
          bold: bold,
          algiment: Alignment.center),
      color: backgrondcolor,
      elevation: 6,
    );
  }
}
