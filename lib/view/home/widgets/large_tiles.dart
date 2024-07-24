import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:travel_app/models/small_tiles_model.dart';
import 'package:travel_app/resources/app_colors.dart';
import 'package:travel_app/resources/app_typography.dart';

class LargeTiles extends StatelessWidget {
  final VoidCallback onTap;
  final SmallTilesModel smallTilesModel;
  const LargeTiles(
      {super.key, required this.smallTilesModel, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
        height: 200.h,
        width: Get.width,
        decoration: BoxDecoration(
          color: AppColors.kBlackColor,
          borderRadius: BorderRadius.circular(20.r),
          image: DecorationImage(
            image: AssetImage(smallTilesModel.image),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              AppColors.kBlackColor.withOpacity(0.5),
              BlendMode.darken,
            ),
          ),
          boxShadow: [
            BoxShadow(
              color: AppColors.kBlackColor.withOpacity(0.2),
              spreadRadius: 1,
              blurRadius: 5,
              offset: const Offset(3, 4),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                BlurryContainer(
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
                ),
                SizedBox(width: 5.w),
                BlurryContainer(
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
                            Icons.share,
                            size: 18,
                            color: AppColors.kWhiteColor,
                          )),
                      SizedBox(width: 4.w),
                      Text(
                        "3D View",
                        style: AppTypography.kExtraLight10
                            .copyWith(color: AppColors.kWhiteColor),
                      ),
                      SizedBox(width: 6.w),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      smallTilesModel.title,
                      style: AppTypography.kExtraLight10.copyWith(
                          color: AppColors.kWhiteColor.withOpacity(0.6)),
                    ),
                    Text(
                      smallTilesModel.subtitle,
                      style: AppTypography.kMedium14
                          .copyWith(color: AppColors.kWhiteColor),
                    ),
                  ],
                ),
                const Spacer(),
                Text(
                  smallTilesModel.price,
                  style: AppTypography.kMedium14
                      .copyWith(color: AppColors.kWhiteColor),
                ),
                Text(
                  "/ ${smallTilesModel.persons}",
                  style: AppTypography.kExtraLight8
                      .copyWith(color: AppColors.kWhiteColor),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
