import 'package:fiufood_mob/core/widgets/palette.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomInput extends StatefulWidget {
  const CustomInput({
    super.key,
    required this.hintText,
    this.height,
    this.isPassword = false,
  });
  final String hintText;
  final double? height;
  final bool isPassword;

  @override
  State<CustomInput> createState() => _CustomInputState();
}

class _CustomInputState extends State<CustomInput> {
  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: widget.isPassword ? !isVisible : false,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(left: 5.w),
        enabledBorder: border(),
        focusedBorder: border(),
        hintText: widget.hintText,
        suffixIcon: widget.isPassword
            ? isVisible
                ? IconButton(
                    onPressed: () => setState(() {
                      isVisible = !isVisible;
                    }),
                    icon: const Icon(
                      Icons.visibility_off,
                    ),
                  )
                : IconButton(
                    onPressed: () => setState(() {
                      isVisible = !isVisible;
                    }),
                    icon: const Icon(
                      Icons.visibility,
                    ),
                  )
            : null,
      ),
    );
  }

  border() => OutlineInputBorder(
        borderRadius: BorderRadius.circular(40),
        borderSide: const BorderSide(
          color: Palette.kPrimary,
        ),
      );
}
