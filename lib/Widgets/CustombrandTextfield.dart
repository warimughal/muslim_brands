// ignore_for_file: must_be_immutable, file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBrandTextField extends StatelessWidget {
  String? text1;
  CustomBrandTextField({
    required this.text1,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text1.toString(),
          style: TextStyle(
            color: const Color(0xFF222222),
            fontSize: 14.sp,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500,
            // height: 0,
          ),
        ),
        SizedBox(
          height: 50.sp,
          // width: 100.sp,
          child: TextField(
            //  controller: companyIDController,
            decoration: InputDecoration(
              filled: true,
              fillColor: const Color(0xFFF5F5F5),
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
