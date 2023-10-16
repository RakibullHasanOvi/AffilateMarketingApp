import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
// import 'package:new_project/widgets/video_player_widget.dart';
import 'package:provider/provider.dart';
import '../providers/colors_fonts.dart';
import '../providers/image_provider.dart';
import '../widgets/password_form.dart';

class UserPage extends StatelessWidget {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context) {
    final profileImageModel = Provider.of<ProfileImageModel>(context);

    // ignore: no_leading_underscores_for_local_identifiers
    Future<void> _getImage() async {
      final pickedImage =
          await ImagePicker().pickImage(source: ImageSource.gallery);

      if (pickedImage != null) {
        profileImageModel.setImage(File(pickedImage.path));
      }
    }

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
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
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 10.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                profileImageModel.image == null
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 50.w),
                            child: Container(
                              height: 200.h,
                              width: 200.w,
                              decoration: BoxDecoration(
                                  color: whiteColor,
                                  borderRadius: BorderRadius.circular(100.r)),
                              child: Center(
                                child: Text(
                                  'Please select an image',
                                  style: GoogleFonts.inter(
                                    fontSize: 16.sp,
                                    // color: whiteColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          IconButton(
                            highlightColor: Colors.cyan[100],
                            onPressed: _getImage,
                            icon: Icon(
                              Icons.add_a_photo_outlined,
                              size: 40.sp,
                              color: mainColor,
                            ),
                          ),
                        ],
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 50.w),
                            child: Container(
                              height: 200.h,
                              width: 190.w,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: FileImage(
                                    profileImageModel.image!,
                                  ),
                                ),
                                borderRadius: BorderRadius.circular(100.r),
                              ),
                            ),
                          ),
                          IconButton(
                            highlightColor: Colors.cyan[100],
                            onPressed: _getImage,
                            icon: Icon(
                              Icons.add_a_photo_outlined,
                              size: 40.sp,
                              color: mainColor,
                            ),
                          ),
                        ],
                      ),
                SizedBox(height: 10.h),
                Center(
                  child: Text(
                    'Tanvir Hasan',
                    style: textStyle5,
                  ),
                ),
                SizedBox(height: 15.h),
                Padding(
                  padding: EdgeInsets.only(left: 40.w),
                  child: Text(
                    'ID: 01546',
                    style: textStyle8,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 40.w),
                  child: Text(
                    'Email: example@gmail.com',
                    style: textStyle8,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 40.w),
                  child: Text(
                    'Stutas: Active',
                    style: textStyle8,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 40.w),
                  child: Text(
                    'Level: 6',
                    style: textStyle8,
                  ),
                ),
                SizedBox(height: 20.h),
                Padding(
                  padding: EdgeInsets.only(left: 40.w),
                  child: Text(
                    'Change Password',
                    style: textStyle5,
                  ),
                ),
                SizedBox(height: 10.h),
                PasswordForm(
                  keyboardType: TextInputType.visiblePassword,
                  labelText: 'Old Password',
                ),
                PasswordForm(
                  keyboardType: TextInputType.visiblePassword,
                  labelText: 'New Password',
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(left: 40.w, bottom: 20.h),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: mainColor,
                      minimumSize: Size(80.w, 38.h),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      'SUBMIT',
                      style: textStyle2,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
