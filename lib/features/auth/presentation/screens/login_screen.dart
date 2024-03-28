import 'package:easy_padding/easy_padding.dart';
import 'package:fiufood_mob/core/static/const.dart';
import 'package:fiufood_mob/core/widgets/custom_button.dart';
import 'package:fiufood_mob/core/widgets/custom_input.dart';
import 'package:fiufood_mob/core/widgets/palette.dart';
import 'package:fiufood_mob/core/widgets/texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:sizer/sizer.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            const SizedBox.expand(),
            Align(
              alignment: Alignment.topCenter,
              child: Image.asset(
                "${imageAssets}fruits_login.png",
                fit: BoxFit.cover,
                width: double.infinity,
                height: 60.h,
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(7.w),
              decoration: const BoxDecoration(
                color: Palette.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Texts.semiBold(
                      "Sign in",
                      fontSize: 15,
                    ).only(bottom: 4.h),
                    const CustomInput(
                      hintText: "admin@fiufood.com",
                    ).only(bottom: 2.h),
                    const CustomInput(
                      hintText: "Password",
                      isPassword: true,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Texts.regular(
                        "Forgot Password?",
                        fontSize: 10,
                        color: Palette.kPrimary,
                      ),
                    ).only(bottom: 5.h),
                    CustomButton(
                      onPressed: () {
                        context.go("/main");
                      },
                      text: "SIGN IN",
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
