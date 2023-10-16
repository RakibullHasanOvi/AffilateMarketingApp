import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../providers/colors_fonts.dart';

// ignore: must_be_immutable
class RegisterForm extends StatelessWidget {
  TextInputType? keyboardType;
  String? labelText;
  RegisterForm(
      {super.key, required this.keyboardType, required this.labelText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 40.w, right: 40.w, bottom: 10.h),
      child: TextFormField(
        keyboardType: keyboardType,
        cursorWidth: 1.w,
        cursorColor: mainColor,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 1.w,
              color: mainColor,
            ),
            borderRadius: BorderRadius.circular(7.r),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 1.w,
              color: mainColor,
            ),
            borderRadius: BorderRadius.circular(7.r),
          ),
          labelText: labelText,
          labelStyle: GoogleFonts.inter(
            textStyle: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.normal,
            ),
          ),
          contentPadding: EdgeInsets.only(left: 15.w, right: 15.w),
        ),
      ),
    );
  }
}
