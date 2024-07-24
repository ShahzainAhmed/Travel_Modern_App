import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_app/models/small_tiles_model.dart';
import 'package:travel_app/resources/app_colors.dart';
import 'package:travel_app/resources/app_typography.dart';
import 'package:travel_app/view/detail/widgets/custom_blurry_container.dart';

class SmallTiles extends StatelessWidget {
  final VoidCallback onTap;
  final SmallTilesModel smallTilesModel;

  const SmallTiles({
    super.key,
    required this.smallTilesModel,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          SizedBox(height: 10.h),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
            height: 200.h,
            width: 200.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.r),
              color: AppColors.kBlackColor,
              boxShadow: [
                BoxShadow(
                  color: AppColors.kBlackColor.withOpacity(0.2),
                  spreadRadius: 1,
                  blurRadius: 5,
                  offset: const Offset(3, 4),
                )
              ],
              image: DecorationImage(
                image: AssetImage(smallTilesModel.image),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  AppColors.kBlackColor.withOpacity(0.5),
                  BlendMode.darken,
                ),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const CustomBlurryContainer(
                      title: "4.8",
                      icon: Icons.star_border,
                    ),
                    SizedBox(width: 5.w),
                    const CustomBlurryContainer(
                      title: "3D View",
                      icon: Icons.share,
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
        ],
      ),
    );
  }
}
