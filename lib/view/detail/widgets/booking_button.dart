import 'package:bounce/bounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:travel_app/resources/app_colors.dart';
import 'package:travel_app/resources/app_typography.dart';

class BookingButton extends StatelessWidget {
  const BookingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Bounce(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 6.h),
        width: Get.width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(100),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const CircleAvatar(
              backgroundColor: AppColors.kBlackColor,
              radius: 24,
              child: Icon(
                Icons.arrow_forward,
                color: AppColors.kWhiteColor,
              ),
            ),
            const Spacer(),
            Text(
              "Book Now",
              style:
                  AppTypography.kMedium12.copyWith(color: AppColors.kBlackColor),
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
    );
  }
}
