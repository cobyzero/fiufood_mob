import 'package:easy_padding/easy_padding.dart';
import 'package:fiufood_mob/core/static/const.dart';
import 'package:fiufood_mob/core/widgets/palette.dart';
import 'package:fiufood_mob/core/widgets/texts.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sizer/sizer.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2)).whenComplete(
      () => context.go("/welcome"),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.kPrimary,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "${imageAssets}logo_splash.png",
              width: 30.w,
              fit: BoxFit.cover,
              alignment: Alignment.center,
            ),
            const Texts.bold(
              "Fiu Food",
              color: Palette.white,
              fontSize: 25,
            ).only(top: 5.h, bottom: 20.h),
          ],
        ),
      ),
    );
  }
}
