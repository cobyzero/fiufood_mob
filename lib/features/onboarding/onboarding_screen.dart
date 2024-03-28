import 'package:easy_padding/easy_padding.dart';
import 'package:fiufood_mob/core/static/const.dart';
import 'package:fiufood_mob/core/widgets/custom_button.dart';
import 'package:fiufood_mob/core/widgets/palette.dart';
import 'package:fiufood_mob/core/widgets/texts.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sizer/sizer.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              "${imageAssets}onboarding.png",
              fit: BoxFit.cover,
              width: 80.w,
            ),
            Column(
              children: [
                Texts.bold(
                  "Fast and responsibily delivery by our courir",
                  fontSize: 15,
                  alignment: TextAlign.center,
                  width: 70.w,
                ).only(bottom: 4.h),
                Texts.regular(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor",
                  fontSize: 10,
                  width: 80.w,
                  alignment: TextAlign.center,
                  height: 1.5,
                  color: Palette.black.withOpacity(.7),
                ),
              ],
            ),
            Column(
              children: [
                CustomButton(
                  onPressed: () {
                    context.go("/register");
                  },
                  text: "CREATE AN ACCOUNT",
                  style: CustomButtonStyle.black,
                ).symmetric(horizontal: 8.w, vertical: 3.h),
                CustomButton(
                  onPressed: () { context.go("/login");},
                  text: "LOGIN",
                  style: CustomButtonStyle.outline,
                ).symmetric(horizontal: 8.w),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
