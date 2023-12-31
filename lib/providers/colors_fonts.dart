import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

//! There has implement many color those needs app...
Color mainColor = const Color(0xFF07A1AB);
Color secondColor = const Color(0xFF07AB3F);
Color thirdColor = const Color(0xFFAB072E);
Color whiteColor = Colors.white;
Color iconsColor = const Color(0xFF005B61);
Color subIconsColor = const Color(0xFF61C5CB);
Color blackColor = Colors.black;
Color boxShadowCle = const Color(0xFF8A8686);

//? Many style create base on the app..
TextStyle get textStyle1 {
  return GoogleFonts.inter(
    textStyle: TextStyle(
      fontSize: 18.sp,
      color: mainColor,
      fontWeight: FontWeight.bold,
    ),
  );
}

TextStyle get textStyle3 {
  return GoogleFonts.inter(
    textStyle: TextStyle(
      fontSize: 15.sp,
      color: mainColor,
      fontWeight: FontWeight.bold,
    ),
  );
}

TextStyle get textStyle2 {
  return GoogleFonts.inter(
    textStyle: TextStyle(
      fontSize: 14.sp,
      color: whiteColor,
      fontWeight: FontWeight.bold,
    ),
  );
}

TextStyle get textStyle4 {
  return GoogleFonts.inter(
    textStyle: TextStyle(
      fontSize: 16.sp,
      color: blackColor,
      fontWeight: FontWeight.w400,
    ),
  );
}

TextStyle get textStyle5 {
  return GoogleFonts.inter(
    textStyle: TextStyle(
      fontSize: 16.sp,
      color: blackColor,
      fontWeight: FontWeight.bold,
    ),
  );
}

TextStyle get textStyle6 {
  return GoogleFonts.inter(
    textStyle: TextStyle(
      fontSize: 12.sp,
      color: whiteColor,
      fontWeight: FontWeight.bold,
    ),
  );
}

TextStyle get textStyle7 {
  return GoogleFonts.inter(
    textStyle: TextStyle(
      fontSize: 12.sp,
      color: blackColor,
      fontWeight: FontWeight.bold,
    ),
  );
}

TextStyle get textStyle8 {
  return GoogleFonts.inter(
    textStyle: TextStyle(
      fontSize: 18.sp,
      color: blackColor,
      fontWeight: FontWeight.normal,
    ),
  );
}


// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:google_fonts/google_fonts.dart';

// const Color bluishClr = Color(0xFF4e5ae8);
// const Color yellowClr = Color(0xFFFFB746);
// const Color pinkClr = Color(0xFFff4667);
// const Color whiteClr = Colors.white;
// const Color primaryClr = bluishClr;
// const Color darkGreyClr = Color(0xFF121212);
// const Color darkHeaderClr = Color(0xFF424242);

// enum ThemeType { dark, light }

// class ThemeProvider with ChangeNotifier {
//   late ThemeData _themeData;
//   late ThemeType _themeType;

//   ThemeProvider() {
//     _themeType = ThemeType.light;
//     _themeData = _buildLightTheme();
//   }

//   ThemeData getTheme() => _themeData;
//   ThemeType getThemeType() => _themeType;

//   void setTheme(ThemeType themeType) {
//     _themeType = themeType;
//     if (themeType == ThemeType.dark) {
//       _themeData = _buildDarkTheme();
//     } else {
//       _themeData = _buildLightTheme();
//     }
//     notifyListeners();
//   }

//   ThemeData _buildDarkTheme() {
//     return ThemeData.dark().copyWith(
//       // Customize the dark theme
//       // Example: appBarTheme, buttonTheme, etc.
//       // ignore: deprecated_member_use
//       backgroundColor: darkGreyClr,
//       // useMaterial3: true,
//       primaryColor: darkGreyClr,
//       // appBarTheme: const AppBarTheme(
//       //   color: darkHeaderClr,
//       // ),

//       brightness: Brightness.dark,
//     );
//   }

//   ThemeData _buildLightTheme() {
//     return ThemeData.light().copyWith(
//       // Customize the light theme
//       // Example: appBarTheme, buttonTheme, etc.
//       // useMaterial3: true,
//       // ignore: deprecated_member_use
//       backgroundColor: whiteClr,
//       primaryColor: bluishClr,
//       // appBarTheme: const AppBarTheme(
//       //   color: bluishClr,
//       // ),
//       brightness: Brightness.light,
//     );
//   }

//   TextStyle get subHeadingStyle {
//     return GoogleFonts.lato(
//       textStyle: TextStyle(
//         fontSize: 20.sp,
//         fontWeight: FontWeight.bold,
//         color:
//             getThemeType() == ThemeType.dark ? Colors.grey : Colors.grey[400],
//       ),
//     );
//   }

//   TextStyle get headingStyle {
//     return GoogleFonts.lato(
//       textStyle: TextStyle(
//         fontSize: 25.sp,
//         fontWeight: FontWeight.bold,
//         color: getThemeType() == ThemeType.dark ? Colors.white : Colors.black,
//       ),
//     );
//   }

//   TextStyle get titleStyle {
//     return GoogleFonts.lato(
//       textStyle: TextStyle(
//         fontSize: 11.sp,
//         fontWeight: FontWeight.bold,
//         color: getThemeType() == ThemeType.dark ? Colors.white : Colors.black,
//       ),
//     );
//   }

//   TextStyle get subTitleStyle {
//     return GoogleFonts.lato(
//       textStyle: TextStyle(
//         fontSize: 10.sp,
//         fontWeight: FontWeight.bold,
//         color: getThemeType() == ThemeType.dark
//             ? Colors.grey[400]
//             : Colors.grey[600],
//       ),
//     );
//   }

//   TextStyle get labelStyle {
//     return GoogleFonts.lato(
//       textStyle: TextStyle(
//         fontSize: 15.sp,
//         fontWeight: FontWeight.bold,
//         color:
//             getThemeType() == ThemeType.dark ? Colors.white70 : Colors.white70,
//       ),
//     );
//   }

//   TextStyle get noteStyle {
//     return GoogleFonts.lato(
//       textStyle: TextStyle(
//         fontSize: 13.sp,
//         fontWeight: FontWeight.bold,
//         color: getThemeType() == ThemeType.dark ? whiteClr : whiteClr,
//       ),
//     );
//   }

//   TextStyle get dateTimeStyle {
//     return GoogleFonts.lato(
//       textStyle: TextStyle(
//         fontSize: 12.sp,
//         fontWeight: FontWeight.bold,
//         color: getThemeType() == ThemeType.dark ? whiteClr : whiteClr,
//       ),
//     );
//   }

//   TextStyle get repeatAndRemainder {
//     return GoogleFonts.lato(
//       textStyle: TextStyle(
//         fontSize: 10.sp,
//         fontWeight: FontWeight.bold,
//         color: getThemeType() == ThemeType.dark
//             ? Colors.grey[200]
//             : Colors.grey[200],
//       ),
//     );
//   }
// }
