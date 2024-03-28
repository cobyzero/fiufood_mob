import 'package:fiufood_mob/core/widgets/palette.dart';
import 'package:fiufood_mob/core/widgets/texts.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

enum CustomButtonStyle {
  black,
  outline,
  regular,
}

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.style = CustomButtonStyle.regular,
  });
  final Function() onPressed;
  final String text;
  final CustomButtonStyle style;

  @override
  Widget build(BuildContext context) {
    switch (style) {
      case CustomButtonStyle.outline:
        return ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            fixedSize: Size(100.w, 13.w),
            shape: const StadiumBorder(
              side: BorderSide(
                width: 2,
              ),
            ),
          ),
          child: Texts.bold(
            text,
            fontSize: 12, 
          ),
        );
      case CustomButtonStyle.black:
        return ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            fixedSize: Size(100.w, 13.w),
            backgroundColor: Palette.black,
          ),
          child: Texts.bold(
            text,
            fontSize: 12,
            color: Palette.white,
          ),
        );
      case CustomButtonStyle.regular:
      default:
        return ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            fixedSize: Size(100.w, 13.w),
            backgroundColor: Palette.kPrimary,
          ),
          child: Texts.bold(
            text,
            fontSize: 12,
          ),
        );
    }
  }
}
