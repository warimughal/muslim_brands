// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:muslim_brands/views/home/home.dart';

class IntroPage2Screen extends StatefulWidget {
  const IntroPage2Screen({super.key});

  @override
  State<IntroPage2Screen> createState() => _IntroPage2ScreenState();
}

class _IntroPage2ScreenState extends State<IntroPage2Screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  height: 580.sp,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/icons/image1.png'),
                          fit: BoxFit.fill)),
                ),
              ],
            ),
            SizedBox(
              height: 30.sp,
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                color: Colors.white,
                child: Column(
                  children: [
                    Text(
                      'Quick and easy',
                      style: TextStyle(
                          fontSize: 20.sp, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 10.sp,
                    ),
                    Text(
                      '''Simply scan a product's barcode with
your camera to find out if it's from a
Muslim brand.''',
                      style: TextStyle(
                          fontSize: 16.sp, fontWeight: FontWeight.w400),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 270.sp),
                      child: TextButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: ((context) => const HomeScreen())));
                          },
                          child: const Text('Next')),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
