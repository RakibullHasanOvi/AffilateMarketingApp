import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../providers/colors_fonts.dart';

class RaferralPage extends StatelessWidget {
  const RaferralPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              ),
            ],
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // There is a simple Text to welcome everyone..
          Padding(
            padding: EdgeInsets.only(top: 20.w, left: 15.w),
            child: Text(
              'Welcome To COMPANY NAME',
              style: GoogleFonts.inter(
                fontSize: 13.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          // There are using some instruction ...
          Padding(
            padding: EdgeInsets.only(top: 20.w, left: 15.w),
            child: Text(
              'See below your all referral, if any user not active yet,'
              'please contact with him/her for activation',
              style: GoogleFonts.inter(
                fontSize: 13.sp,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          SizedBox(height: 20.h),
          //? This sector uses for how many people Referral and total active or in active with number..
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Center(
                child: Text(
                  'Total Referral: 000',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.inter(
                    color: mainColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 12.sp,
                  ),
                ),
              ),
              //?
              Center(
                child: Text(
                  'Active : 000',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.inter(
                    color: secondColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 12.sp,
                  ),
                ),
              ),
              //?
              Center(
                child: Text(
                  'In-Active : 000',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.inter(
                    color: thirdColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 12.sp,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 25.h),
          //? This sector uses for (user Id, User Name, Status..)
          Padding(
            padding: EdgeInsets.only(left: 40.w, right: 40.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'User ID',
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.bold,
                    fontSize: 12.sp,
                  ),
                ),
                Text(
                  'User Name',
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.bold,
                    fontSize: 12.sp,
                  ),
                ),
                Text(
                  'Status',
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.bold,
                    fontSize: 12.sp,
                  ),
                ),
              ],
            ),
          ),
          // SizedBox(height: 20.h),
          //? This section is user for showing which user active or inActive..
          Expanded(
            child: ListView.builder(
              itemCount: 8,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(top: 10.h, right: 40.w, left: 40.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '16005',
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.normal,
                          fontSize: 12.sp,
                          color: secondColor,
                        ),
                      ),
                      Text(
                        'Akbar Hossain',
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.normal,
                          fontSize: 12.sp,
                          color: secondColor,
                        ),
                      ),
                      Text(
                        'Active',
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.normal,
                          fontSize: 12.sp,
                          color: secondColor,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
