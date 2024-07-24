import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_app/resources/app_colors.dart';
import 'package:travel_app/resources/app_typography.dart';

class DetailsRow extends StatelessWidget {
  final String title;
  final String subtitle;
  final String price;
  final String persons;

  const DetailsRow({
    super.key,
    required this.title,
    required this.subtitle,
    required this.price,
    required this.persons,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: AppTypography.kLight12.copyWith(
                color: AppColors.kWhiteColor.withOpacity(0.6),
              ),
            ),
            Text(
              subtitle,
              style: AppTypography.kBold18.copyWith(
                color: AppColors.kWhiteColor,
              ),
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  price,
                  style: AppTypography.kBold20
                      .copyWith(color: AppColors.kWhiteColor),
                ),
                SizedBox(width: 4.w),
                Text(
                  "/ $persons",
                  style: AppTypography.kLight10
                      .copyWith(color: AppColors.kWhiteColor),
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
