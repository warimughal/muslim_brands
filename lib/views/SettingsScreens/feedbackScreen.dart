// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:muslim_brand_project_flutter/widgets/SettingsScreen/custom%20appBar.dart';
// import 'package:muslim_brand_project_flutter/widgets/SettingsScreen/customfeedbackcontainer.dart';

import '../../Widgets/SettingsScreen/custom appBar.dart';
import '../../Widgets/SettingsScreen/customfeedbackcontainer.dart';

class FeedbackScreen extends StatefulWidget {
  const FeedbackScreen({super.key});

  @override
  State<FeedbackScreen> createState() => _FeedbackScreenState();
}

class _FeedbackScreenState extends State<FeedbackScreen> {
  TextEditingController searchController = TextEditingController();
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Feedback',
        backgroundColor: Colors.white,
        iconBackgroundColor: Color(0x190A8432),
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Container(
                  child: Image.asset(
                    'assets/images/dot.png',
                    width: 30.sp,
                    height: 30.sp,
                  ),
                ),
                Text(
                  'Tell us the problem you encountered',
                  style: TextStyle(
                    color: Color(0xFF222222),
                    fontSize: 16.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // Create a custom container with InkWell
                CustomContainer(
                  label: 'Crash',
                  isSelected: selectedIndex == 0,
                  onTap: () {
                    setState(() {
                      // Update the selected index
                      selectedIndex = 0;
                    });
                  },
                ),
                SizedBox(width: 14.sp),
                CustomContainer(
                  label: 'App not responding',
                  isSelected: selectedIndex == 1,
                  onTap: () {
                    setState(() {
                      selectedIndex = 1;
                    });
                  },
                ),
                SizedBox(width: 14.sp),
                CustomContainer(
                  label: 'Page not loading',
                  isSelected: selectedIndex == 2,
                  onTap: () {
                    setState(() {
                      selectedIndex = 2;
                    });
                  },
                ),
              ],
            ),
          ),
          // Second row
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // Create a custom container with InkWell
                CustomContainer(
                  label: 'Function disabled',
                  isSelected: selectedIndex == 3,
                  onTap: () {
                    setState(() {
                      selectedIndex = 3;
                    });
                  },
                ),
                const SizedBox(width: 14),
                CustomContainer(
                  label: 'Don’t know how to use',
                  isSelected: selectedIndex == 4,
                  onTap: () {
                    setState(() {
                      selectedIndex = 4;
                    });
                  },
                ),
              ],
            ),
          ),
          // Third row
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomContainer(
                  label: 'Suggestions',
                  isSelected: selectedIndex == 5,
                  onTap: () {
                    setState(() {
                      selectedIndex = 5;
                    });
                  },
                ),
                SizedBox(width: 14.sp),
                CustomContainer(
                  label: 'Others',
                  isSelected: selectedIndex == 6,
                  onTap: () {
                    setState(() {
                      selectedIndex = 6;
                    });
                  },
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              controller: searchController,
              minLines: 5,
              maxLines: 6,
              keyboardType: TextInputType.multiline,
              decoration: InputDecoration(
                filled: true,
                fillColor: Color(0x190A8432),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
                hintText:
                    'Please describe your problem (at least 6 characters) ',
                hintStyle: TextStyle(
                  color: Color(0xFF666666),
                  fontSize: 11.sp,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
