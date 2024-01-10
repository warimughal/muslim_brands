// ignore_for_file: prefer_const_constructors, file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Color backgroundColor;
  final Color iconBackgroundColor;
  final String title;
  final VoidCallback? onBack;

  const CustomAppBar({
    Key? key,
    required this.backgroundColor,
    required this.iconBackgroundColor,
    required this.title,
    this.onBack,
  }) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor,
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          height: 9.sp,
          width: 9.sp,
          // color: iconBackgroundColor,
          child: IconButton(
            icon: Image.asset('assets/icons/Group 312170397.png'),
            onPressed: onBack ?? () => Navigator.of(context).pop(),
          ),
        ),
      ),
      title: Text(
        title,
        style: TextStyle(
          color: Color(0xFF222222),
          fontSize: 20.sp,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
