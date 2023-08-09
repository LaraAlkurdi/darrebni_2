import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    required this.text,
    required this.textColor,
    this.fontWeight,
    required this.textsize,
    this.textDecoration,
    this.textAlign,
    this.onPressed,
  });
  final Function? onPressed;
  final String text;
  final TextAlign? textAlign;
  final TextDecoration? textDecoration;
  final Color textColor;
  final double textsize;
  final FontWeight? fontWeight;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        decoration: textDecoration,
        fontSize: textsize,
        fontWeight: fontWeight ?? FontWeight.bold,
        color: textColor, //عامل main black color
      ),
    );
  }
}
