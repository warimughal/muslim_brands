// ignore_for_file: prefer_const_constructors, file_names, unused_label, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomProductScanAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  final Color backgroundColor;
  final Color iconBackgroundColor;
  final String title;
  final VoidCallback? onBack;
  final VoidCallback? onTrashPressed;

  const CustomProductScanAppBar({
    Key? key,
    required this.backgroundColor,
    required this.iconBackgroundColor,
    required this.title,
    this.onBack,
    this.onTrashPressed,
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
          height: 9,
          width: 9,
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
          fontSize: 20,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
        ),
      ),
      actions: [
        GestureDetector(
          onTap: onTrashPressed, // Corrected this line
          child: Container(
            // color: iconBackgroundColor,
            child: SizedBox(
              height: 50.sp,
              child: IconButton(
                icon: Image.asset('assets/icons/delete.png'),
                onPressed: onTrashPressed, // Corrected this line
              ),
            ),
          ),
        ),
        SizedBox(
          height: 50.sp,
          child: IconButton(
            icon: Image.asset('assets/icons/share.png'),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
