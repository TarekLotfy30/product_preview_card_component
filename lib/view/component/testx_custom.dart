import 'package:flutter/material.dart';

import '../../view_model/utiles/colors.dart';

class TextCustom extends StatelessWidget {
  final Color? color;
  final String? fontFamily;
  final double? fontSize;
  final double? letterSpacing;
  final FontWeight? fontWeight;
  final String? data;
  final TextDecoration? decoration;

  const TextCustom({
    super.key,
    this.color = AppColors.darkGrayishBlue,
    this.fontFamily,
    this.fontSize = 14,
    this.letterSpacing,
    this.fontWeight = FontWeight.w500,
    this.data,
    this.decoration,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      data ?? "",
      style: TextStyle(
        color: color,
        fontFamily: fontFamily,
        fontSize: fontSize,
        letterSpacing: letterSpacing,
        fontWeight: fontWeight,
        decoration: decoration,
      ),
    );
  }
}
