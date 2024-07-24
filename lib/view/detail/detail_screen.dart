import 'package:animate_do/animate_do.dart';
import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/models/small_tiles_model.dart';
import 'package:travel_app/resources/app_colors.dart';
import 'package:travel_app/resources/app_typography.dart';
import 'package:travel_app/view/detail/widgets/booking_button.dart';
import 'package:travel_app/view/detail/widgets/custom_blurry_container.dart';
import 'package:travel_app/view/detail/widgets/details_row.dart';
import 'package:travel_app/view/home/widgets/custom_icons.dart';

class DetailScreen extends StatefulWidget {
  final SmallTilesModel smallTilesModel;
  const DetailScreen({super.key, required this.smallTilesModel});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  bool animate = true;
  late AnimationController controller;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: AppColors.kBlackColor,
          image: DecorationImage(
            image: AssetImage(widget.smallTilesModel.image),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              AppColors.kBlackColor.withOpacity(0.5),
              BlendMode.darken,
            ),
          ),
        ),
        child: Padding(
          padding:
              EdgeInsets.only(left: 10.w, right: 10.w, top: 30.h, bottom: 20.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomIcon(
                    onTap: () async {
                      setState(() {
                        animate = !animate;
                      });
                      await Future.delayed(const Duration(milliseconds: 600));
                      Get.back();
                    },
                    icon: Icons.arrow_back_ios_new,
                  ),
                  Text(
                    "Details",
                    style: AppTypography.kMedium16
                        .copyWith(color: AppColors.kWhiteColor),
                  ),
                  const CustomIcon(icon: Icons.notifications_none),
                ],
              ),
              FadeInUp(
                animate: animate,
                controller: (controller) => controller = controller,
                delay: const Duration(milliseconds: 100),
                child: BlurryContainer(
                  borderRadius: BorderRadius.circular(30.r),
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 12.h),
                  height: Get.height / 2,
                  blur: 4,
                  color: AppColors.kBlackColor.withOpacity(0.5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FadeInUp(
                        animate: animate,
                        delay: const Duration(milliseconds: 200),
                        child: Row(
                          children: [
                            const CustomBlurryContainer(
                              title: "Map",
                              icon: Icons.map_outlined,
                            ),
                            const Spacer(),
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
                      ),
                      SizedBox(height: 14.h),
                      FadeInUp(
                        animate: animate,
                        delay: const Duration(milliseconds: 300),
                        child: DetailsRow(
                          title: widget.smallTilesModel.title,
                          subtitle: widget.smallTilesModel.subtitle,
                          price: widget.smallTilesModel.price,
                          persons: widget.smallTilesModel.persons,
                        ),
                      ),
                      SizedBox(height: 20.h),
                      FadeInUp(
                        animate: animate,
                        delay: const Duration(milliseconds: 400),
                        child: Text(
                          "Vacations are for relaxation. So it's perfectly normal to want to spend a few days by the pool in peace and quiet. Our Bangkok and Phuket destinations offer serene environments designed for your utmost comfort. Please note, to ensure a tranquil experience, guests must be of a certain age.",
                          style: GoogleFonts.poppins(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                            color: AppColors.kWhiteColor,
                            wordSpacing: 1,
                          ),
                        ),
                      ),
                      const Spacer(),
                      const BookingButton(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
