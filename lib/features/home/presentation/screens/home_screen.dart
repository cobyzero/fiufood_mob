import 'package:easy_padding/easy_padding.dart';
import 'package:fiufood_mob/core/widgets/custom_button.dart';
import 'package:fiufood_mob/core/widgets/palette.dart';
import 'package:fiufood_mob/core/widgets/texts.dart';
import 'package:fiufood_mob/features/home/presentation/widgets/categories_item.dart';
import 'package:fiufood_mob/features/home/presentation/widgets/recomended_item.dart';
import 'package:fiufood_mob/features/home/presentation/widgets/trending_item.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

const cantTrending = 4;

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Texts.regular(
                "Good Morning",
                color: Palette.black.withOpacity(.7),
                fontSize: 10,
              ).only(top: 4.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Texts.bold(
                    "Rafatul Islam",
                    fontSize: 15,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.notifications_active,
                    ),
                  ),
                ],
              ).only(bottom: 3.h, right: 4.w),
              SizedBox(
                height: 24.h,
                width: double.infinity,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return const RecomendedItem().only(right: 5.w);
                  },
                ),
              ).only(bottom: 5.h),
              const Texts.bold(
                "Categories",
                fontSize: 15,
              ).only(bottom: 3.h),
              SizedBox(
                width: double.infinity,
                height: 14.h,
                child: ListView.builder(
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.all(3.w),
                      child: const CategoriesItem(),
                    );
                  },
                ),
              ).only(bottom: 3.h),
              const Texts.bold(
                "Trending Deals",
                fontSize: 15,
              ).only(bottom: 3.h),
              SizedBox(
                height: (cantTrending / 2).round() * 35.h,
                width: double.infinity,
                child: GridView.builder(
                  itemCount: cantTrending,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 12 / 16,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 20,
                  ),
                  itemBuilder: (context, index) {
                    return const TrendingItem();
                  },
                ),
              ).only(right: 4.w, bottom: 3.h),
              CustomButton(
                onPressed: () {},
                text: "More",
                style: CustomButtonStyle.black,
              ).only(bottom: 5.h, right: 5.w),
            ],
          ).only(left: 5.w),
        ),
      ),
    );
  }
}
