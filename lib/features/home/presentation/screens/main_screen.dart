import 'package:fiufood_mob/core/widgets/palette.dart';
import 'package:fiufood_mob/features/home/presentation/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});
  final controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Palette.white,
          border: Border(
            top: BorderSide(
              width: 1,
              color: Palette.grey,
            ),
          ),
        ),
        padding: EdgeInsets.symmetric(vertical: 1.h),
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.home,
                size: 20.sp,
                color: Palette.kPrimary,
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: PageView(
          controller: controller,
          children: const [
            HomeScreen(),
          ],
        ),
      ),
    );
  }
}
