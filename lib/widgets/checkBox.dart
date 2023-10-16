// ignore: file_names
// ignore: file_names
// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../providers/checkbox.dart';
import '../providers/colors_fonts.dart';

// ignore: must_be_immutable
class CheckBoxWidget extends StatelessWidget {
  String title;
  CheckBoxWidget({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 30.w),
      child: Row(
        children: [
          Consumer<CheckBoxProvider>(
            builder: (context, val, child) {
              return Checkbox(
                checkColor: Colors.white,
                value: val.isChecked,
                fillColor: MaterialStateProperty.resolveWith<Color>(
                    (Set<MaterialState> states) {
                  if (states.contains(MaterialState.disabled)) {
                    return secondColor;
                  }
                  return mainColor;
                }),
                onChanged: (newValue) {
                  val.tootleCheckBox();
                },
                activeColor: mainColor,
              );
            },
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              title,
              style: GoogleFonts.inter(),
            ),
          ),
        ],
      ),
    );
  }
}
