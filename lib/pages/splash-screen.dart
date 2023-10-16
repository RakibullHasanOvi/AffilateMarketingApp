import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:new_project/pages/login_page.dart';
import 'package:new_project/providers/colors_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // startStreaming();
    startTimer();
  }

  startTimer() {
    var duration = const Duration(seconds: 4);
    return Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(
        context, CupertinoPageRoute(builder: (context) => const LoginPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: whiteColor,
      child: SafeArea(
        child: Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  'MY APP NAME',
                  style: GoogleFonts.inter(
                    fontSize: 26.sp,
                    color: mainColor,
                    fontWeight: FontWeight.bold,
                    shadows: [
                      Shadow(
                        offset: const Offset(5, 4),
                        blurRadius: 18,
                        color: boxShadowCle,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Center(
                child: SvgPicture.asset(
                  'assets/icon.svg',
                  height: 137.h,
                  width: 137.w,
                  fit: BoxFit.cover,
                ),
              ),
              Lottie.asset(
                'animation/1.json',
                height: 100.h,
                width: 130.w,
                fit: BoxFit.cover,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
