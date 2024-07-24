import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_app/resources/app_colors.dart';
import 'package:travel_app/resources/app_typography.dart';
import 'package:travel_app/view/home/widgets/categories_list.dart';

class CategoriesListWidget extends StatefulWidget {
  const CategoriesListWidget({super.key});

  @override
  State<CategoriesListWidget> createState() => _CategoriesListWidgetState();
}

class _CategoriesListWidgetState extends State<CategoriesListWidget> {
  int selectedIndex = 0; // First item selected initially
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      physics: const BouncingScrollPhysics(),
      separatorBuilder: (context, index) => SizedBox(width: 10.w),
      scrollDirection: Axis.horizontal,
      itemCount: categoriesList.length,
      itemBuilder: (context, index) {
        bool isSelected = selectedIndex == index;
        return GestureDetector(
          onTap: () {
            setState(() {
              selectedIndex = index;
            });
          },
          child: Container(
            padding: EdgeInsets.symmetric(
              vertical: 4.h,
              horizontal: 16.w,
            ),
            decoration: BoxDecoration(
              color: isSelected ? AppColors.kBlackColor : Colors.grey[300],
              borderRadius: BorderRadius.circular(40.r),
            ),
            child: Center(
              child: Text(
                categoriesList[index],
                style: AppTypography.kMedium12.copyWith(
                  color: isSelected
                      ? AppColors.kWhiteColor
                      : AppColors.kBlackColor,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
