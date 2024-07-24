import 'package:bounce/bounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:travel_app/resources/app_colors.dart';
import 'package:travel_app/view/home/home_screen.dart';

class SplashButton extends StatelessWidget {
  const SplashButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Bounce(
          child: GestureDetector(
            onTap: () => Get.to(const HomeScreen()),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 6.h),
              width: 140.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(100),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const CircleAvatar(
                    backgroundColor: AppColors.kBlackColor,
                    radius: 28,
                    child: Text(
                      "Go",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  const Spacer(),
                  Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: AppColors.kBlackColor.withOpacity(0.3),
                    size: 16,
                  ),
                  Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: AppColors.kBlackColor.withOpacity(0.4),
                    size: 16,
                  ),
                  const Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: AppColors.kBlackColor,
                    size: 16,
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
