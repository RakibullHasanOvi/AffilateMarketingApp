import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_project/providers/copy_provider.dart';
import 'package:provider/provider.dart';
import '../providers/colors_fonts.dart';

class AffilatePage extends StatelessWidget {
  const AffilatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//! This sector uses only appBar..
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
//? Here is the body section and uses lots of widgets for various reason.
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 15.w, top: 20.w),
            child: Text(
              'Welcome To COMPANY NAME',
              style: GoogleFonts.inter(
                fontSize: 13.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 15.w),
            child: Text(
              'Watch bellow the product list . Affiliate the product and '
              'earn money.',
              style: GoogleFonts.inter(
                fontSize: 13.sp,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Center(
                child: Text(
                  'Product ID',
                  textAlign: TextAlign.center,
                  style: textStyle7,
                ),
              ),
              //?
              Center(
                child: Text(
                  'Images',
                  textAlign: TextAlign.center,
                  style: textStyle7,
                ),
              ),
              //?
              Center(
                child: Text(
                  'Descriptions',
                  textAlign: TextAlign.center,
                  style: textStyle7,
                ),
              ),
              //?
              Center(
                child: Text(
                  'Aff.link',
                  textAlign: TextAlign.center,
                  style: textStyle7,
                ),
              ),
            ],
          ),
//! This widget uses for divide the screen...
          Expanded(
            child: ListView.builder(
              // scrollDirection: Axis.horizontal,
              itemCount: 4,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(
                    top: 20.h,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 15.w),
                        child: const Text('0154'),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 35.w),
                        child: InkWell(
                          highlightColor: Colors.cyan[100],
                          onTap: () {
//? Here uses a shwoDialog for pop-up masessage show...
                            showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  title: Text(
                                    'P. ID : 0154',
                                    style: GoogleFonts.inter(
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  content: SingleChildScrollView(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Center(
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                              top: 10.h,
                                              bottom: 10.h,
                                            ),
                                            child: Image.asset(
                                              'assets/image.png',
                                              height: 100.h,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        Text(
                                          'Description',
                                          style: GoogleFonts.inter(
                                            fontSize: 15.sp,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10.h,
                                        ),
                                        const Text(
                                          'In publishing and graphic design,'
                                          'Lorem ipsum is a placeholder text commonly used'
                                          ' to demonstrate the visual form of a document or '
                                          'a typeface without relying on meaningful content.In publishing and graphic design,'
                                          ' Lorem ipsum is a placeholder text commonly used to '
                                          'demonstrate the visual form of a document or a typeface without relying on meaningful content',
                                          textAlign: TextAlign.justify,
                                        ),
                                        SizedBox(
                                          height: 10.h,
                                        ),
                                        Text(
                                          'Affiliage Link',
                                          style: GoogleFonts.inter(
                                            fontSize: 15.sp,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10.h,
                                        ),
                                        const Text(
                                          'www.yourwebsite.com/product_id?refser_id',
                                        ),
                                        SizedBox(height: 10.h),
                                        //? there are calling copyProvider... that's why using consumer builder.
                                        Consumer<CopyProvider>(
                                          builder: (context, val, _) {
                                            return InkWell(
                                              onTap: () {
                                                val.updateTextToCopy(
                                                    'www.yourwebsite.com/product_id?refser_id');
                                                _copyToClipboard(
                                                    context, val.textToCopy);
                                              },
                                              child: Container(
                                                height: 25.h,
                                                width: 100.w,
                                                decoration: BoxDecoration(
                                                  color:
                                                      const Color(0xFF07AB84),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20.r),
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    'Copy Aff. Link',
                                                    textAlign: TextAlign.center,
                                                    style: textStyle6,
                                                  ),
                                                ),
                                              ),
                                            );
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                          child: Image.asset(
                            'assets/image.png',
                          ),
                        ),
                      ),
                      SizedBox(
                        // height: 50.h,
                        width: 120.w,
                        // color: mainColor,
                        child: const Text(
                            'In publishing and graphic design, Lorem ipsum is...'),
                      ),
                      Consumer<CopyProvider>(
                        builder: (context, value, _) {
                          return Padding(
                            padding: EdgeInsets.only(right: 15.w),
                            child: InkWell(
                              child: SvgPicture.asset('assets/Copy.svg'),
                              onTap: () {
//? inicial the fuction of copyProvider...
                                value.updateTextToCopy(
                                    'www.yourwebsite.com/product_id?refser_id');
//? using a function for copy and show a copied messege..
                                _copyToClipboard(context, value.textToCopy);
                              },
                            ),
                          );
                        },
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

void _copyToClipboard(BuildContext context, String text) {
  Clipboard.setData(ClipboardData(text: text));
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      behavior: SnackBarBehavior.floating,
      backgroundColor: mainColor,
      content: Text(
        'Copied to clipboard',
        style: GoogleFonts.inter(
          fontWeight: FontWeight.bold,
          fontSize: 15.sp,
        ),
      ),
    ),
  );
}
