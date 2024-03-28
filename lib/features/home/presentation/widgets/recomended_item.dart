import 'package:fiufood_mob/core/static/const.dart';
import 'package:fiufood_mob/core/widgets/palette.dart';
import 'package:fiufood_mob/core/widgets/texts.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class RecomendedItem extends StatelessWidget {
  const RecomendedItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 75.w, 
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.all(5.w),
      decoration: BoxDecoration(
        color: Palette.black,
        borderRadius: BorderRadius.circular(20),
        image: const DecorationImage(
          image: AssetImage(
            "${imageAssets}reomended_1.png",
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Texts.semiBold(
            "Recomended",
            color: Palette.white,
            fontSize: 12,
          ),
          Texts.semiBold(
            "Recipe Today",
            color: Palette.white,
            fontSize: 12,
          ),
        ],
      ),
    );
  }
}
