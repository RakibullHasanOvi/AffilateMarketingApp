// ignore_for_file: sized_box_for_whitespace
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_project/providers/colors_fonts.dart';
import 'package:provider/provider.dart';

import '../components/active_user.dart';
import '../providers/subscription_provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable

    return Container(
      color: mainColor,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            centerTitle: false,
            title: Text('APP NAME', style: textStyle1),
            leading: IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/Logo.svg'),
            ),
            actions: [
              Row(
                children: [
                  SizedBox(
                    height: 30.h,
                    width: 50.w,
                    child: SvgPicture.asset(
                      'assets/Person.svg',
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 20.w),
                    child: Text(
                      'Tanvir',
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.bold, fontSize: 18.sp),
                    ),
                  )
                ],
              )
            ],
          ),
          body: Consumer<SubscriptionProvider>(
            builder: (context, value, _) {
              return value.hasSubscription
                  ? const ActiveUser()
                  : Center(
                      child: Container(
                        width: 250.w,
                        child: RichText(
                          textAlign: TextAlign.justify,
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text:
                                    'Tanvir Ahmmed you are not active member.For active your account please contact ',
                                style: GoogleFonts.inter(
                                  fontSize: 16.sp,
                                  color: blackColor,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              TextSpan(
                                text: '017xxxxxx ',
                                style: GoogleFonts.inter(
                                  fontSize: 16.sp,
                                  color: blackColor,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextSpan(
                                text: 'number',
                                style: GoogleFonts.inter(
                                  fontSize: 16.sp,
                                  color: blackColor,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
            },
          ),
          // bottomNavigationBar: ButtonTheme(
          //   child: Container(
          //     height: 20.h,
          //     color: mainColor,
          //   ),
          // ),
        ),
      ),
    );
  }
}
