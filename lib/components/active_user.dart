import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../providers/colors_fonts.dart';
import '../pages/cpa-marketing.dart';

class ActiveUser extends StatelessWidget {
  const ActiveUser({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 15.w, top: 20.h),
          child: Text(
            'Welcome To Our World',
            style:
                GoogleFonts.inter(fontWeight: FontWeight.bold, fontSize: 13.sp),
          ),
        ),
        SizedBox(height: 20.h),
        Padding(
          padding: EdgeInsets.only(left: 15.w),
          child: SizedBox(
            width: 300.w,
            child: RichText(
              textAlign: TextAlign.justify,
              text: TextSpan(
                children: [
                  TextSpan(
                    text:
                        'First you start our class, All class schedule is below: Download class video & start learning. If you feel any hesitate, please call:',
                    style: GoogleFonts.inter(
                      fontSize: 12.sp,
                      color: blackColor,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  TextSpan(
                    text: ' +8801716-xxxxxx',
                    style: GoogleFonts.inter(
                      fontSize: 12.sp,
                      color: blackColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            // const Text(
            //   'First you start our class, All class schedule is below: Download class video & start learning'
            //   'If you feel any hesitate, please call: +8801716-xxxxxx',
            //   textAlign: TextAlign.justify,
            // ),
          ),
        ),
        //?
        SizedBox(
          height: 20.h,
        ),
        Padding(
          padding: EdgeInsets.only(left: 15.w),
          child: Text(
            'COURSE CATEGORY',
            style: textStyle4,
          ),
        ),
        Expanded(
          child: GridView.builder(
            padding: EdgeInsets.only(left: 15.w, top: 20.h, right: 10.w),
            itemCount: 4,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: (157.w / 104.h),
              crossAxisSpacing: 20.w,
              mainAxisSpacing: 20.h,
            ),
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (_, __, ___) => Tablet(),
                      transitionDuration: const Duration(microseconds: 1000),
                      transitionsBuilder: (_, a, __, c) =>
                          FadeTransition(opacity: a, child: c),
                    ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(6.r),
                    border: Border.all(
                      width: 1.w,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: boxShadowCle,
                        offset: const Offset(0.99, 1.2),
                        spreadRadius: 0.07,
                        blurRadius: 3,
                      ).scale(3), //
                    ],
                  ),
                  child: Center(
                    child: Text(
                      'CPA MARKETING',
                      style: GoogleFonts.inter(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              );
            },
            // primary: false,
            // padding: EdgeInsets.all(20.h),
            // crossAxisSpacing: 20.sp,
            // mainAxisSpacing: 20.sp,
            // crossAxisCount: 2,
            // childAspectRatio: (157.w / 104.h),

            //   Container(
            //     color: secondColor,
            //     child: const Center(
            //       child: Text(
            //         'Cpa Marketing',
            //       ),
            //     ),
            //   ),
            //   Container(
            //     color: thirdColor,
            //     child: const Center(
            //       child: Text(
            //         'Cpa Marketing',
            //         style: TextStyle(color: Colors.white),
            //       ),
            //     ),
            //   ),
            //   Container(
            //     color: blackColor,
            //     child: const Center(
            //       child: Text(
            //         'Cpa Marketing',
            //         style: TextStyle(color: Colors.white),
            //       ),
            //     ),
            //   ),
            // ],
          ),
        ),
      ],
    );
  }
}
