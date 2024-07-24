import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_app/resources/app_colors.dart';

class CustomIcon extends StatelessWidget {
  final VoidCallback? onTap;
  final IconData icon;
  const CustomIcon({
    super.key,
    required this.icon,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: CircleAvatar(
        radius: 26.r,
        backgroundColor: AppColors.kLightGreyColor,
        child: Icon(icon),
      ),
    );
  }
}
