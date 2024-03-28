import 'package:fiufood_mob/core/widgets/palette.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CategoriesItem extends StatelessWidget {
  const CategoriesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 25.w, 
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Palette.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            offset: Offset(8, -2),
            color: Colors.grey,
            blurRadius: 10,
          ),
        ],
      ),
      child: Icon(
        Icons.apple,
        size: 40.sp,
      ),
    );
  }
}
