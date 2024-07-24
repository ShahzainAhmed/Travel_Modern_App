import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_app/resources/app_colors.dart';
import 'package:travel_app/resources/app_typography.dart';

class CustomContainer extends StatelessWidget {
  final String title;
  final IconData icon;

  const CustomContainer({
    super.key,
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return BlurryContainer(
      blur: 4,
      color: Colors.white.withOpacity(0.2),
      borderRadius: BorderRadius.circular(40.r),
      padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 3.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          BlurryContainer(
              blur: 4,
              color: Colors.white.withOpacity(0.2),
              child: const Icon(
                Icons.star_outline_outlined,
                color: AppColors.kWhiteColor,
                size: 18,
              )),
          SizedBox(width: 4.w),
          Text(
            "4.8",
            style: AppTypography.kExtraLight10
                .copyWith(color: AppColors.kWhiteColor),
          ),
          SizedBox(width: 6.w),
        ],
      ),
    );
  }
}
