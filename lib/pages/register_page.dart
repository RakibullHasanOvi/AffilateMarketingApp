import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_project/pages/login_page.dart';
import 'package:new_project/providers/colors_fonts.dart';
import 'package:new_project/widgets/checkBox.dart';
import '../widgets/password_form.dart';
import '../widgets/register_form.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: mainColor,
      child: SafeArea(
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: Scaffold(
            bottomNavigationBar: ButtonTheme(
              child: Container(
                height: 20.h,
                color: mainColor,
              ),
            ),
            body: Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Add image..
                    SvgPicture.asset('assets/Vector.svg'),

                    SizedBox(
                      height: 10.h,
                    ),
                    Text('REGISTER', style: textStyle1),

                    SizedBox(height: 10.h),
//? Create lots of form widgets such a First name, last name, email, password, referral..
                    RegisterForm(
                      keyboardType: TextInputType.name,
                      labelText: 'First Name',
                    ),
                    RegisterForm(
                      keyboardType: TextInputType.name,
                      labelText: 'Last Name',
                    ),
                    PasswordForm(
                      keyboardType: TextInputType.visiblePassword,
                      labelText: 'Password',
                    ),
                    PasswordForm(
                      keyboardType: TextInputType.visiblePassword,
                      labelText: 'Confirm Password',
                    ),
                    RegisterForm(
                      keyboardType: TextInputType.emailAddress,
                      labelText: 'Referral (Optional)',
                    ),
//? this widget builds for check box...

                    CheckBoxWidget(title: 'Terms and Condition'),
                    SizedBox(
                      height: 10.h,
                    ),
                    //? this section uses for Register ..
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
                          Navigator.push(
                            context,
                            PageRouteBuilder(
                              pageBuilder: (_, __, ___) => const LoginPage(),
                              transitionDuration: const Duration(seconds: 0),
                              transitionsBuilder: (_, a, __, c) =>
                                  FadeTransition(opacity: a, child: c),
                            ),
                          );
                        },
                        child: Text(
                          'REGISTER',
                          style: textStyle2,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
//? This section uses for SingIn..
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Already have a account ? ',
                          style: GoogleFonts.inter(fontSize: 15.sp),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              PageRouteBuilder(
                                pageBuilder: (_, __, ___) => const LoginPage(),
                                transitionDuration: const Duration(seconds: 0),
                                transitionsBuilder: (_, a, __, c) =>
                                    FadeTransition(opacity: a, child: c),
                              ),
                            );
                          },
                          child: Text(
                            'Sing In',
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
