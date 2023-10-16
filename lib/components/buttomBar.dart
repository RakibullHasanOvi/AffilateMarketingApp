import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:new_project/pages/raferral_page.dart';
import 'package:new_project/pages/user_page.dart';
import 'package:new_project/providers/colors_fonts.dart';
import 'package:provider/provider.dart';

import '../pages/affilate_page.dart';
import '../pages/home_page.dart';
import '../providers/bottom_index.dart';

class BottomBarPage extends StatelessWidget {
  BottomBarPage({Key? key}) : super(key: key);

  final List<Widget> pages = [
    const HomePage(),
    const RaferralPage(),
    const AffilatePage(),
    const UserPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: mainColor,
      child: SafeArea(
        child: Consumer<CurrentIndex>(
          builder: (context, value, chlid) {
            return Scaffold(
              body: pages[value.currentIndex],
              bottomNavigationBar: BottomNavigationBar(
                elevation: 0,
                currentIndex: value.currentIndex,
                backgroundColor: whiteColor,
                type: BottomNavigationBarType.fixed,
                // ignore: use_full_hex_values_for_flutter_colors
                selectedItemColor: iconsColor,
                unselectedItemColor: subIconsColor,
                selectedLabelStyle: TextStyle(fontSize: 12.sp),
                unselectedFontSize: 12.sp,
                items: [
                  //?Navigation Item num-1...
                  BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      'assets/Home.svg',
                      height: 17.h,
                      // ignore: deprecated_member_use
                      color: value.currentIndex == 0
                          // ignore: use_full_hex_values_for_flutter_colors
                          ? iconsColor
                          : subIconsColor,
                    ),
                    label: "Home",
                    // ignore: use_full_hex_values_for_flutter_colors
                    backgroundColor: whiteColor,
                  ),

                  //?Navigation Item num-2...
                  BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      'assets/Referral.svg',
                      height: 17.h,
                      // ignore: deprecated_member_use
                      color: value.currentIndex == 1
                          // ignore: use_full_hex_values_for_flutter_colors
                          ? iconsColor
                          : subIconsColor,
                    ),
                    label: "Rafferral",
                    backgroundColor: whiteColor,
                  ),

                  //?Navigation Item num-3...
                  BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      'assets/Affilate.svg',
                      height: 17.h,
                      // ignore: deprecated_member_use
                      color: value.currentIndex == 2
                          // ignore: use_full_hex_values_for_flutter_colors
                          ? iconsColor
                          : subIconsColor,
                    ),
                    label: "Affilate",
                    backgroundColor: whiteColor,
                  ),
                  //?Navigation Item num-4...
                  BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      'assets/User.svg',
                      height: 17.h,
                      // ignore: deprecated_member_use
                      color: value.currentIndex == 3
                          // ignore: use_full_hex_values_for_flutter_colors
                          ? iconsColor
                          : subIconsColor,
                    ),
                    label: "User",
                    // ignore: use_full_hex_values_for_flutter_colors
                    backgroundColor: whiteColor,
                  ),
                ],
                onTap: (index) {
                  value.swipIndex(index);
                },
              ),
              // bottomSheet: Container(
              //   color: mainColor,
              //   height: 20.h,
              // ),
            );
          },
        ),
      ),
    );
  }
}
