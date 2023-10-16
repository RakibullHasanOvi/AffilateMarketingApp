import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_project/components/buttomBar.dart';
import 'package:new_project/pages/register_page.dart';
import 'package:new_project/providers/colors_fonts.dart';
import 'package:new_project/providers/obsecure.dart';
import 'package:provider/provider.dart';
import '../widgets/checkBox.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    // print('hi');
    return Container(
      //! this container is using for the safe area color.
      color: mainColor,
      child: SafeArea(
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: Scaffold(
            bottomNavigationBar: ButtonTheme(
              //? this perametter uses bottom's color.
              child: Container(
                height: 20.h,
                color:
                    mainColor, //? mainColor meanes lost of position this color will use,
              ),
            ),
            body: Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset('assets/Vector.svg'), //? Add a svg image.
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      'LOGIN',
                      style: textStyle1,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
//? This widget uses for email feild
                    Padding(
                      padding: EdgeInsets.only(
                          left: 40.w, right: 40.w, bottom: 10.h),
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
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
                          labelText: 'Email',
                          labelStyle: GoogleFonts.inter(
                            textStyle: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          contentPadding:
                              EdgeInsets.only(left: 15.w, right: 15.w),
                        ),
                      ),
                    ),
//? This widget uses for password feild..
                    Padding(
                      padding: EdgeInsets.only(
                          left: 40.w, right: 40.w, bottom: 10.h),
                      child: Consumer<ObSecureText>(
                        builder: (context, value, child) {
                          return TextFormField(
                            keyboardType: TextInputType.visiblePassword,
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
                              labelText: 'Password',
                              labelStyle: GoogleFonts.inter(
                                textStyle: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              contentPadding:
                                  EdgeInsets.only(left: 15.w, right: 15.w),
                              suffixIcon: IconButton(
                                onPressed: () {
                                  value.toggleObsecureText();
                                },
                                icon: Icon(
                                  value.obsecuretext
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                  color: mainColor,
                                  size: 25.sp,
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
//? This section uses for checkBox...
                    CheckBoxWidget(
                      title: 'Remember me',
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
//? This section uses for Login button..
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.only(left: 40.w),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: mainColor,
                          minimumSize: Size(80.w, 38.h),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                        ),
                        onPressed: () {
                          Navigator.pushAndRemoveUntil(
                              context,
                              PageRouteBuilder(
                                pageBuilder: (_, __, ___) => BottomBarPage(),
                                transitionDuration: const Duration(seconds: 0),
                                transitionsBuilder: (_, a, __, c) =>
                                    FadeTransition(opacity: a, child: c),
                              ),
                              (route) => false);
                        },
                        child: Text(
                          'LOGIN',
                          style: textStyle2,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
//? This section uses for Forgot Password
                    Container(
                      alignment: Alignment.centerRight,
                      padding: EdgeInsets.only(right: 40.w),
                      child: InkWell(
                        onTap: () {},
                        child: Text(
                          'Forgot Password ?',
                          style: TextStyle(color: mainColor, fontSize: 15.sp),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
//? This section uses for singup..
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Don\'t have any account ? ',
                          style: GoogleFonts.inter(fontSize: 15.sp),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              PageRouteBuilder(
                                pageBuilder: (_, __, ___) =>
                                    const RegisterPage(),
                                transitionDuration: const Duration(seconds: 0),
                                transitionsBuilder: (_, a, __, c) =>
                                    FadeTransition(opacity: a, child: c),
                              ),
                            );
                          },
                          child: Text(
                            'Sing Up',
                            style: textStyle3,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
