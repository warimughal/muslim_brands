// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import '../../Widgets/productsviewScreen/bakedchipsappBar.dart';

class BakedChipsScreen extends StatefulWidget {
  const BakedChipsScreen({super.key});

  @override
  State<BakedChipsScreen> createState() => _BakedChipsScreenState();
}

class _BakedChipsScreenState extends State<BakedChipsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomBakedScreenAppBar(
        title: 'Baked Chips',
        backgroundColor: Colors.white,
        iconBackgroundColor: Color(0x190A8432),
      ),
      backgroundColor: Colors.white,
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 396.sp,
            height: 327.sp,
            decoration: ShapeDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/rp1.png'),
                fit: BoxFit.fill,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                width: 396.sp,
                height: 118.sp,
                decoration: ShapeDecoration(
                  color: Color(0xFFF5F5F5),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Product Category:',
                          style: TextStyle(
                            color: Color(0xFF222222),
                            fontSize: 12.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                        SizedBox(
                          width: 16.sp,
                        ),
                        Text(
                          'Snacks Chips',
                          style: TextStyle(
                            color: Color(0xFF222222),
                            fontSize: 12.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.sp),
                    Row(
                      children: [
                        Text(
                          'Product Name:',
                          style: TextStyle(
                            color: Color(0xFF222222),
                            fontSize: 12.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                        SizedBox(
                          width: 35.sp,
                        ),
                        Text(
                          'Baked Potatos',
                          style: TextStyle(
                            color: Color(0xFF222222),
                            fontSize: 12.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.sp),
                    Row(
                      children: [
                        Text(
                          'Product Company:',
                          style: TextStyle(
                            color: Color(0xFF222222),
                            fontSize: 12.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                        SizedBox(
                          width: 10.sp,
                        ),
                        Text(
                          'Cheetos',
                          style: TextStyle(
                            color: Color(0xFF222222),
                            fontSize: 12.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
