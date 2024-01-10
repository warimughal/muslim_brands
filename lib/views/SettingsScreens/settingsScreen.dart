// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_element, unused_import, sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Widgets/CustomDailog.dart';
import '../../Widgets/SettingsScreen/custom appBar.dart';
import 'feedbackScreen.dart';
import 'languageScreen.dart';
// import 'package:muslim_brand_project_flutter/view/SettingsScreens/feedbackScreen.dart';
// import 'package:muslim_brand_project_flutter/view/SettingsScreens/languageScreen.dart';
// import 'package:muslim_brand_project_flutter/widgets/SettingsScreen/custom%20appBar.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  void _showRateUsDialog(BuildContext context) {
    CustomDailog(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Settings',
        backgroundColor: Colors.white,
        iconBackgroundColor: Color(0x190A8432),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: 400.sp,
                height: 56.sp,
                decoration: ShapeDecoration(
                  color: Color(0x190A8432),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Opacity(
                        opacity: 0.80,
                        child: Container(
                          width: 30.sp,
                          height: 30.sp,
                          decoration: ShapeDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(0.71, -0.71),
                              end: Alignment(-0.71, 0.71),
                              colors: [Color(0xFF52E5E7), Color(0xFF130CB7)],
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: Image.asset(
                            'assets/images/language-alt_svgrepo.com.png',
                            width: 30.sp,
                            height: 30.sp,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5.sp,
                    ),
                    Text(
                      'Language',
                      style: TextStyle(
                        color: Color(0xFF222222),
                        fontSize: 14.sp,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LanguageScreen(),
                            ),
                          );
                        },
                        child: Image.asset(
                          'assets/images/more_svgrepo.com.png',
                          width: 24.sp,
                          height: 24.sp,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: 400.sp,
                height: 56.sp,
                decoration: ShapeDecoration(
                  color: Color(0x190A8432),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Opacity(
                        opacity: 0.80,
                        child: Container(
                          width: 30.sp,
                          height: 30.sp,
                          decoration: ShapeDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(0.71, -0.71),
                              end: Alignment(-0.71, 0.71),
                              colors: [Color(0xFF4ECC7B), Color(0xFF0C5199)],
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: Image.asset(
                            'assets/images/share-2_svgrepo.com.png',
                            width: 30.sp,
                            height: 30.sp,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5.sp,
                    ),
                    Text(
                      'Share',
                      style: TextStyle(
                        color: Color(0xFF222222),
                        fontSize: 14.sp,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: GestureDetector(
                onTap: () {
                  _showRateUsDialog(context);
                },
                child: Container(
                  width: 400.sp,
                  height: 56.sp,
                  decoration: ShapeDecoration(
                    color: Color(0x190A8432),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Opacity(
                          opacity: 0.80,
                          child: Container(
                            width: 30.sp,
                            height: 30.sp,
                            decoration: ShapeDecoration(
                              gradient: LinearGradient(
                                begin: Alignment(0.71, -0.71),
                                end: Alignment(-0.71, 0.71),
                                colors: [Color(0xFF5F2673), Color(0xFFD91DE1)],
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            child: Image.asset(
                              'assets/images/star-sharp_svgrepo.com.png',
                              width: 30.sp,
                              height: 30.sp,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5.sp,
                      ),
                      Text(
                        'Rate us',
                        style: TextStyle(
                          color: Color(0xFF222222),
                          fontSize: 14.sp,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: GestureDetector(
                onTap: () {
                  // Navigate to the language screen
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FeedbackScreen(),
                    ),
                  );
                },
                child: Container(
                  width: 400.sp,
                  height: 56.sp,
                  decoration: ShapeDecoration(
                    color: Color(0x190A8432),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Opacity(
                          opacity: 0.80,
                          child: Container(
                            width: 30.sp,
                            height: 30.sp,
                            decoration: ShapeDecoration(
                              gradient: LinearGradient(
                                begin: Alignment(0.71, -0.71),
                                end: Alignment(-0.71, 0.71),
                                colors: [Color(0xFF36CE57), Color(0xFF238012)],
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            child: Image.asset(
                              'assets/images/feedback_svgrepo.com.png',
                              width: 30.sp,
                              height: 30.sp,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5.sp,
                      ),
                      Text(
                        'Feedback',
                        style: TextStyle(
                          color: Color(0xFF222222),
                          fontSize: 14.sp,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(
                width: 400.sp,
                height: 56.sp,
                decoration: ShapeDecoration(
                  color: Color(0x190A8432),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.sp),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Opacity(
                        opacity: 0.80.sp,
                        child: Container(
                          width: 30.sp,
                          height: 30.sp,
                          decoration: ShapeDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(0.71, -0.71),
                              end: Alignment(-0.71, 0.71),
                              colors: [Color(0xFF6B73FF), Color(0xFF000DFF)],
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.sp),
                            ),
                          ),
                          child: Image.asset(
                            'assets/images/Frame.png',
                            width: 30.sp,
                            height: 30.sp,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5.sp,
                    ),
                    Text(
                      'Privacy Policy',
                      style: TextStyle(
                        color: Color(0xFF222222),
                        fontSize: 14.sp,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
