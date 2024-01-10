// ignore_for_file: prefer_const_constructors, file_names, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomProfileAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  final Color backgroundColor;
  final Color iconBackgroundColor;
  final String title;
  final VoidCallback? onBack;

  const CustomProfileAppBar({
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
        padding: EdgeInsets.all(8.0),
        child: SizedBox(
          height: 9.sp,
          width: 9.sp,
          //color: iconBackgroundColor,
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
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            //  color: iconBackgroundColor,
            child: IconButton(
              icon: Image.asset('assets/icons/Group 312170398 (1).png'),
              onPressed: () {},
            ),
          ),
        ),
      ],
    );
  }
}
