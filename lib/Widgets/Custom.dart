// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomRow extends StatelessWidget {
  const CustomRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
            height: 50.sp,
            child: const Image(image: AssetImage('assets/icons/Group.png'))),
        SizedBox(
            height: 40.sp,
            child:
                const Image(image: AssetImage('assets/icons/Group (1).png'))),
        SizedBox(
            height: 50.sp,
            child: const Image(image: AssetImage('assets/icons/Group (3).png')))
      ],
    );
  }
}
