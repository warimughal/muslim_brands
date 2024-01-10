// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:muslim_brands/Widgets/custemText.dart';
import 'package:muslim_brands/Widgets/custemTextField.dart';
import 'package:muslim_brands/views/home/home.dart';

import '../../Widgets/Custom.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool? isChecked = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding:
                      EdgeInsets.only(left: 16.sp, right: 16.sp, top: 70.sp),
                  child: Column(
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                          height: 160.sp,
                          width: 200.sp,
                          child: const Image(
                              image: AssetImage('assets/icons/icon1.png'))),
                      SizedBox(
                        height: 50.sp,
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Image(
                                image:
                                    AssetImage('assets/icons/Group (2).png')),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 60.sp,
                      ),
                      CustemTextField(
                        prefix: const Icon(
                          Icons.email,
                          color: Colors.green,
                        ),
                      ),
                      CustemTextField(
                        prefix: const Icon(
                          Icons.lock,
                          color: Colors.green,
                        ),
                      ),
                      Row(
                        children: [
                          Checkbox(
                            // tristate: true,
                            value: isChecked,
                            onChanged: (bool? value) {
                              setState(() {
                                isChecked = value;
                              });
                            },
                          ),
                          const ZText(
                            text: 'Remember me',
                          ),
                          const Spacer(
                            flex: 1,
                          ),
                          const ZText(
                            text: 'Forget Password?',
                            fontWeight: FontWeight.w600,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20.sp,
                      ),
                      Container(
                        width: 396.sp,
                        height: 46.sp,
                        decoration: ShapeDecoration(
                          color: const Color(0xFF098331),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const HomeScreen()));
                          },
                          child: Center(
                            child: ZText(
                              text: 'Continue',
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.sp,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            // height: 10,
                            width: 150.sp,
                            child: const Divider(
                              // indent: 10,
                              // endIndent: 10,
                              thickness: 2,
                              color: Colors.grey,
                            ),
                          ),
                          const ZText(
                            text: 'or',
                          ),
                          SizedBox(
                              width: 150.sp,
                              child: const Divider(
                                thickness: 2,
                                color: Colors.grey,
                              ))
                        ],
                      ),
                      SizedBox(
                        height: 20.sp,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                              height: 50.sp,
                              child: const Image(
                                  image:
                                      AssetImage('assets/icons/Frame1.png'))),
                          SizedBox(
                            width: 30.sp,
                          ),
                          SizedBox(
                              height: 50.sp,
                              child: const Image(
                                  image: AssetImage('assets/icons/Frame.png')))
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30.sp,
                ),
                const CustomRow()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
