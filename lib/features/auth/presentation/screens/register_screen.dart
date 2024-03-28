import 'package:easy_padding/easy_padding.dart';
import 'package:fiufood_mob/core/static/const.dart';
import 'package:fiufood_mob/core/widgets/custom_button.dart';
import 'package:fiufood_mob/core/widgets/custom_input.dart';
import 'package:fiufood_mob/core/widgets/palette.dart';
import 'package:fiufood_mob/core/widgets/texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sizer/sizer.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

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
                "${imageAssets}fruits.png",
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
                      "Create your account",
                      fontSize: 15,
                    ).only(bottom: 4.h),
                    Row(
                      children: [
                        Expanded(
                          child: CustomInput(
                            hintText: "Name",
                            height: 6.h,
                          ).only(right: 5.w),
                        ),
                        Expanded(
                          child: CustomInput(
                            height: 6.h,
                            hintText: "Last Name",
                          ),
                        ),
                      ],
                    ).only(bottom: 2.h),
                    const CustomInput(
                      hintText: "admin@fiufood.com",
                    ).only(bottom: 2.h),
                    const CustomInput(
                      hintText: "Password",
                      isPassword: true,
                    ).only(bottom: 3.h),
                    Texts.regular(
                      "By tapping Sign up you accept all",
                      fontSize: 10,
                      color: Palette.black.withOpacity(.7),
                      alignment: TextAlign.center,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: const Texts.bold(
                            "terms",
                            fontSize: 10,
                            color: Palette.kPrimary,
                          ),
                        ),
                        Texts.regular(
                          "and",
                          fontSize: 10,
                          color: Palette.black.withOpacity(.7),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Texts.bold(
                            "condition",
                            fontSize: 10,
                            color: Palette.kPrimary,
                          ),
                        ),
                      ],
                    ).only(bottom: 2.h),
                    CustomButton(
                      onPressed: () {},
                      text: "CREATE AN ACCOUNT",
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
