import 'package:fiufood_mob/core/widgets/palette.dart';
import 'package:flutter/material.dart';
 import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class Texts extends StatelessWidget {
  final String text;
  final double fontSize;
  final TextAlign alignment;
  final FontWeight fontWeight;
  final Color color;
  final double height;
  final int maxLines;
  final String? fontFamily;
  final double letterSpacing;
  final double? width;
  const Texts(
    this.text, {
    super.key,
    this.fontSize = 15,
    required this.fontWeight,
    this.alignment = TextAlign.left,
    this.height = 1,
    this.maxLines = 30,
    required this.color,
    this.fontFamily,
    this.letterSpacing = 0,
    this.width,
  });

  const Texts.bold(
    this.text, {
    super.key,
    this.height = 1,
    this.fontSize = 15,
    this.alignment = TextAlign.left,
    this.color = Palette.black,
    this.maxLines = 30,
    this.fontFamily = "Poppins-Bold",
    this.letterSpacing = 0,
    this.width,
  }) : fontWeight = FontWeight.bold;

  const Texts.regular(
    this.text, {
    super.key,
    this.height = 1,
    this.fontSize = 15,
    this.alignment = TextAlign.left,
    this.color = Palette.black,
    this.maxLines = 30,
    this.fontFamily = "Poppins-Regular",
    this.letterSpacing = 0,
    this.width,
  }) : fontWeight = FontWeight.normal;

  const Texts.semiBold(
    this.text, {
    super.key,
    this.height = 1,
    this.fontSize = 15,
    this.alignment = TextAlign.left,
    this.color = Palette.black,
    this.maxLines = 30,
    this.fontFamily = "Poppins-SemiBold",
    this.letterSpacing = 0,
    this.width,
  }) : fontWeight = FontWeight.w600;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Text(
        text,
        textAlign: alignment,
        style: GoogleFonts.poppins().copyWith(
          color: color,
          fontSize: fontSize.sp,
          height: height,
          fontWeight: fontWeight,
          decoration: TextDecoration.none,
          letterSpacing: letterSpacing,
          fontFamily: fontFamily,
        ),
        maxLines: maxLines,
        softWrap: true,
      ),
    );
  }
}
