import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/models/small_tiles_model.dart';
import 'package:travel_app/resources/app_typography.dart';
import 'package:travel_app/view/detail/detail_screen.dart';
import 'package:travel_app/view/home/widgets/categories_list_widget.dart';
import 'package:travel_app/view/home/widgets/custom_icons.dart';
import 'package:travel_app/view/home/widgets/large_tiles.dart';
import 'package:travel_app/view/home/widgets/small_tiles.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0; // First item selected initially

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        surfaceTintColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        title: Text("Discover", style: AppTypography.kBold20),
        actions: [
          const CustomIcon(icon: Icons.search),
          SizedBox(width: 10.w),
          Padding(
            padding: EdgeInsets.only(right: 20.w),
            child: const CustomIcon(icon: Icons.notifications_none_sharp),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20.h),
          child: Column(
            children: [
              SizedBox(
                height: 50.h,
                child: FadeInUp(
                  duration: const Duration(milliseconds: 1500),
                  child: const CategoriesListWidget(),
                ),
              ),
              SizedBox(height: 14.h),
              SizedBox(
                height: 250.h,
                width: Get.width,
                child: ListView.separated(
                  separatorBuilder: (context, index) => SizedBox(width: 10.w),
                  physics: const BouncingScrollPhysics(),
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  scrollDirection: Axis.horizontal,
                  itemCount: smallTilesList.length,
                  itemBuilder: (context, index) {
                    return FadeInUp(
                      duration: const Duration(milliseconds: 1600),
                      child: SmallTiles(
                        smallTilesModel: smallTilesList[index],
                        onTap: () => Get.to(
                          DetailScreen(smallTilesModel: smallTilesList[index]),
                        ),
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: FadeInUp(
                  duration: const Duration(milliseconds: 1700),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AnimatedTextKit(
                        isRepeatingAnimation: false,
                        animatedTexts: [
                          TyperAnimatedText(
                            "Top Destinations",
                            speed: const Duration(milliseconds: 120),
                            textStyle: GoogleFonts.poppins(
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          )
                        ],
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.grey[200],
                        child: const Icon(Icons.arrow_forward_outlined),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10.h),
              ListView.builder(
                itemCount: smallTilesList.length,
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                    child: FadeInUp(
                      duration: const Duration(milliseconds: 1800),
                      child: LargeTiles(
                        smallTilesModel: smallTilesList[index],
                        onTap: () => Get.to(
                          DetailScreen(smallTilesModel: smallTilesList[index]),
                        ),
                      ),
                    ),
                  );
                },
              ),
              SizedBox(height: 20.h),
            ],
          ),
        ),
      ),
    );
  }
}


/* 
 AnimatedTextKit(
                          isRepeatingAnimation: false,
                          animatedTexts: [
                            TyperAnimatedText(
                              "Top Destination",
                              speed: const Duration(milliseconds: 210),
                              textStyle: GoogleFonts.poppins(
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            )
                          ]),
 */