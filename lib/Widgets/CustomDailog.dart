// ignore_for_file: file_names, non_constant_identifier_names, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Future<dynamic> CustomDailog(BuildContext context) {
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
          backgroundColor: Colors.white,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: SizedBox(
            width: 348.sp,
            height: 400.sp,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Align(
                        alignment: Alignment.topRight,
                        child: IconButton(
                          icon: const Icon(Icons.close),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ),
                      Container(
                        width: 152.sp,
                        height: 100.sp,
                        clipBehavior: Clip.antiAlias,
                        decoration: const BoxDecoration(),
                        child: Stack(
                          children: [
                            Positioned(
                              left: 47.63.sp,
                              top: 24.23.sp,
                              child: SizedBox(
                                width: 56.64.sp,
                                height: 54.59.sp,
                                child: Image.asset(
                                  'assets/images/star2.png',
                                  width: 30.sp,
                                  height: 30.sp,
                                ),
                              ),
                            ),
                            Positioned(
                              left: 107.56.sp,
                              top: 53.15.sp,
                              child: SizedBox(
                                width: 44.44.sp,
                                height: 46.86.sp,
                                child: Image.asset(
                                  'assets/images/star3.png',
                                  width: 30.sp,
                                  height: 30.sp,
                                ),
                              ),
                            ),
                            Positioned(
                              left: -0.02.sp,
                              top: 53.11.sp,
                              child: SizedBox(
                                width: 44.37.sp,
                                height: 46.90.sp,
                                child: Image.asset(
                                  'assets/images/star1.png',
                                  width: 30.sp,
                                  height: 30.sp,
                                ),
                              ),
                            ),
                            Positioned(
                              left: 72.29.sp,
                              top: 0,
                              child: SizedBox(
                                width: 7.06.sp,
                                height: 15.77.sp,
                                child: Image.asset(
                                  'assets/images/line3.png',
                                  width: 30.sp,
                                  height: 30.sp,
                                ),
                              ),
                            ),
                            Positioned(
                              left: 43.75.sp,
                              top: 9.10.sp,
                              child: SizedBox(
                                width: 11.55.sp,
                                height: 14.10.sp,
                                child: Image.asset(
                                  'assets/images/line2.png',
                                  width: 30.sp,
                                  height: 30.sp,
                                ),
                              ),
                            ),
                            Positioned(
                              left: 25.02.sp,
                              top: 33.51.sp,
                              child: SizedBox(
                                width: 15.22.sp,
                                height: 9.29.sp,
                                child: Image.asset(
                                  'assets/images/star1.png',
                                  width: 30.sp,
                                  height: 30.sp,
                                ),
                              ),
                            ),
                            Positioned(
                              left: 96.38.sp,
                              top: 9.10.sp,
                              child: SizedBox(
                                width: 11.59.sp,
                                height: 14.10.sp,
                                child: Image.asset(
                                  'assets/images/line4.png',
                                  width: 30.sp,
                                  height: 30.sp,
                                ),
                              ),
                            ),
                            Positioned(
                              left: 111.45.sp,
                              top: 33.51.sp,
                              child: SizedBox(
                                width: 15.22.sp,
                                height: 9.29.sp,
                                child: Image.asset(
                                  'assets/images/line5.png',
                                  width: 30.sp,
                                  height: 30.sp,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10.sp,
                      ),
                      Text(
                        'Rate us',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: const Color(0xFF098331),
                          fontSize: 20.sp,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                      SizedBox(height: 24.sp),
                      SizedBox(
                        width: 348,
                        child: Text(
                          'We work Super hard to serve you better would love to know how would you rate our app?',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: const Color(0xFF222222),
                            fontSize: 14.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 32.sp),
                Container(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 32.sp,
                        height: 32.sp,
                        clipBehavior: Clip.antiAlias,
                        decoration: const BoxDecoration(),
                        child: Stack(children: [
                          Image.asset(
                            'assets/images/solid.png',
                            width: 30.sp,
                            height: 30.sp,
                          ),
                        ]),
                      ),
                      SizedBox(width: 8.sp),
                      Container(
                        width: 32.sp,
                        height: 32.sp,
                        clipBehavior: Clip.antiAlias,
                        decoration: const BoxDecoration(),
                        child: Stack(children: [
                          Image.asset(
                            'assets/images/solid.png',
                            width: 30.sp,
                            height: 30.sp,
                          ),
                        ]),
                      ),
                      SizedBox(width: 8.sp),
                      Container(
                        width: 32.sp,
                        height: 32.sp,
                        clipBehavior: Clip.antiAlias,
                        decoration: const BoxDecoration(),
                        child: Stack(children: [
                          Image.asset(
                            'assets/images/solid.png',
                            width: 30,
                            height: 30,
                          ),
                        ]),
                      ),
                      const SizedBox(width: 8),
                      Container(
                        width: 32,
                        height: 32,
                        clipBehavior: Clip.antiAlias,
                        decoration: const BoxDecoration(),
                        child: Stack(children: [
                          Image.asset(
                            'assets/images/solid.png',
                            width: 30,
                            height: 30,
                          ),
                        ]),
                      ),
                      const SizedBox(width: 8),
                      Container(
                        width: 32,
                        height: 32,
                        clipBehavior: Clip.antiAlias,
                        decoration: const BoxDecoration(),
                        child: Stack(children: [
                          Image.asset(
                            'assets/images/rating2.png',
                            width: 30,
                            height: 30,
                          ),
                        ]),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ));
    },
  );
}
