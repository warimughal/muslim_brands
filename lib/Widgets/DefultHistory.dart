// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../provider/history_provider.dart';

class DefaultHistory extends StatelessWidget {
  final HistoryProvider model;
  const DefaultHistory({
    required this.model,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text('HIstory'),
        const Spacer(),
        Row(
          children: [
            SizedBox(
              height: 30.sp,
              child: GestureDetector(
                onTap: () {
                  model.updateSearch(true);
                },
                child:
                    const Image(image: AssetImage('assets/icons/search.png')),
              ),
            ),
            SizedBox(
              width: 20.sp,
            ),

            InkWell(
              onTap: () => showDialog(
                  context: context,
                  builder: (BuildContext context) => SizedBox(
                        height: 100.sp,
                        width: 100.sp,
                        child: Padding(
                          padding: EdgeInsets.only(
                              right: 30.sp, left: 90.sp, bottom: 550.sp),
                          child: AlertDialog(
                            backgroundColor: Colors.white,
                            actions: [
                              Column(
                                children: [
                                  Padding(padding: EdgeInsets.only(top: 10.sp)),
                                  Row(
                                    children: [
                                      SizedBox(
                                        height: 30.sp,
                                        child: const Image(
                                            image: AssetImage(
                                                'assets/icons/delete.png')),
                                      ),
                                      SizedBox(
                                        width: 10.sp,
                                      ),
                                      const Text('Delete All')
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10.sp,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        height: 30.sp,
                                        child: const Image(
                                            image: AssetImage(
                                                'assets/icons/share.png')),
                                      ),
                                      SizedBox(
                                        width: 10.sp,
                                      ),
                                      const Text('Share All')
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      )),
              child: SizedBox(
                height: 30.sp,
                child:
                    const Image(image: AssetImage('assets/icons/drawer.png')),
              ),
            )
            // Icon(Icons.search),
            // Icon(Icons.menu_outlined)
          ],
        )
      ],
    );
  }
}
