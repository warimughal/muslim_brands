// ignore_for_file: file_names, must_be_immutable, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustemTextField extends StatelessWidget {
  String? label;
  final controller;
  String? validator;
  var prefix;

  CustemTextField({
    this.controller,
    this.validator,
    this.label,
    this.prefix,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 20.sp),
      child: SizedBox(
        height: 50.sp,
        child: TextFormField(
          controller: controller,
          decoration: InputDecoration(
              prefixIcon: prefix,
              labelText: label,
              errorStyle: const TextStyle(height: 0.1),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(width: 1))),
          validator: (v) {
            if (v!.isEmpty) {
              return validator;
            }
            return null;
          },
        ),
      ),
    );
  }
}
