import 'package:easy_padding/easy_padding.dart';
import 'package:fiufood_mob/core/static/const.dart';
import 'package:fiufood_mob/core/widgets/custom_button.dart';
import 'package:fiufood_mob/core/widgets/palette.dart';
import 'package:fiufood_mob/core/widgets/texts.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sizer/sizer.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              "${imageAssets}welcome.png",
              fit: BoxFit.cover,
              width: 80.w,
            ),
            Column(
              children: [
                const Texts.bold(
                  "Welcome to Fiu Food",
                  fontSize: 16,
                ).only(bottom: 6.h),
                const Texts.bold(
                  "Grocery application",
                  fontSize: 12,
                ).only(bottom: 3.h),
                Texts.regular(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor",
                  fontSize: 10,
                  width: 80.w,
                  alignment: TextAlign.center,
                  height: 2,
                  color: Palette.black.withOpacity(.7),
                ),
              ],
            ),
            CustomButton(
              onPressed: () {
                context.go("/onboarding");
              },
              text: "NEXT",
            ).symmetric(horizontal: 8.w),
          ],
        ),
      ),
    );
  }
}
