import 'package:easy_padding/easy_padding.dart';
import 'package:fiufood_mob/core/widgets/palette.dart';
import 'package:fiufood_mob/core/widgets/texts.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class TrendingItem extends StatelessWidget {
  const TrendingItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2.w),
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        color: Palette.black,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.favorite,
              size: 20.sp,
              color: Palette.red,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(2.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Texts.regular(
                  "Avocado",
                  fontSize: 14,
                  color: Palette.white,
                ).only(bottom: 1.5.h),
                const Texts.regular(
                  "\$6.7",
                  fontSize: 14,
                  color: Palette.white,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
