import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/resources/app_assets.dart';
import 'package:travel_app/resources/app_colors.dart';
import 'package:travel_app/view/splash/widgets/splash_button.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 30.h),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppAssets.splash),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 30.h),
            color: Colors.black.withOpacity(0.45),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                BounceInDown(
                  from: 100,
                  child: Text(
                    "Now Let's Turn This Into A Life.",
                    style: GoogleFonts.poppins(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      color: AppColors.kWhiteColor,
                    ),
                  ),
                ),
                SizedBox(
                  height: 100.h,
                  child: AnimatedTextKit(
                    displayFullTextOnTap: true,
                    isRepeatingAnimation: false,
                    animatedTexts: [
                      TyperAnimatedText(
                        "Explore Your Favorite Journey",
                        speed: const Duration(milliseconds: 100),
                        textStyle: TextStyle(
                          fontSize: 32.sp,
                          fontWeight: FontWeight.w600,
                          color: AppColors.kWhiteColor,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30.h),
                BounceInDown(
                  from: 100,
                  delay: const Duration(milliseconds: 100),
                  child: const SplashButton(),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
