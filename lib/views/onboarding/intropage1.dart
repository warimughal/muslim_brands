import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IntroPage1Screen extends StatefulWidget {
  const IntroPage1Screen({super.key});

  @override
  State<IntroPage1Screen> createState() => _IntroPage1ScreenState();
}

class _IntroPage1ScreenState extends State<IntroPage1Screen> {
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
                          image: AssetImage('assets/icons/image2.png'),
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
                child: Center(
                  child: Column(
                    children: [
                      Text(
                        'Discover with MuzCheck!',
                        style: TextStyle(
                            fontSize: 20.sp, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 10.sp,
                      ),
                      Center(
                        child: Text(
                          '''Explore, scan, and connect with\n trusted Muslim brands''',
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
