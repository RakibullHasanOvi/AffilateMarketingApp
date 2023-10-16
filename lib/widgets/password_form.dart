import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../providers/colors_fonts.dart';
import '../providers/obsecure.dart';

// ignore: must_be_immutable
class PasswordForm extends StatelessWidget {
  TextInputType? keyboardType;
  String? labelText;
  PasswordForm(
      {super.key, required this.keyboardType, required this.labelText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 40.w, right: 40.w, bottom: 10.h),
      child: Consumer<ObSecureText>(
        builder: (context, value, child) {
          return TextFormField(
            keyboardType: keyboardType,
            cursorWidth: 1.w,
            cursorColor: mainColor,
            obscureText: value.obsecuretext,
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
              suffixIcon: IconButton(
                onPressed: () {
                  value.toggleObsecureText();
                },
                icon: Icon(
                  value.obsecuretext ? Icons.visibility_off : Icons.visibility,
                  color: mainColor,
                  size: 25.sp,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
