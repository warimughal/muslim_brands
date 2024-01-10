import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:muslim_brands/Widgets/custemText.dart';
import 'package:muslim_brands/provider/history_provider.dart';
import 'package:provider/provider.dart';

import '../../Widgets/DefultHistory.dart';
import '../../Widgets/enabkeSearch.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  bool isFirstLunch = true;

  @override
  void initState() {
    init();

    super.initState();
  }

  void init() {
    Future.delayed(const Duration(seconds: 4), () {
      setState(() {
        isFirstLunch = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HistoryProvider(),
      child: Consumer<HistoryProvider>(
        builder: (context, model, child) => SafeArea(
          child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: isFirstLunch
                    ? MainAxisAlignment.start
                    : MainAxisAlignment.start,
                children: [
                  isFirstLunch
                      ? Column(
                          children: [
                            /// start here

                            Row(
                              children: [
                                const Text('HIstory'),
                                const Spacer(),
                                Row(
                                  children: [
                                    SizedBox(
                                      height: 30.sp,
                                      child: const Image(
                                          image: AssetImage(
                                              'assets/icons/search.png')),
                                    ),
                                    SizedBox(
                                      width: 20.sp,
                                    ),

                                    SizedBox(
                                      height: 30.sp,
                                      child: const Image(
                                          image: AssetImage(
                                              'assets/icons/drawer.png')),
                                    )
                                    // Icon(Icons.search),
                                    // Icon(Icons.menu_outlined)
                                  ],
                                )
                              ],
                            ),

                            SizedBox(
                              height: 300.sp,
                            ),
                            Column(
                              children: [
                                Center(
                                    child: Icon(
                                  Icons.access_time_filled_sharp,
                                  size: 50.sp,
                                )),
                                const Center(
                                  child: Text("No History"),
                                ),
                              ],
                            ),
                          ],
                        )
                      : Column(
                          children: [
                            //start from here

                            model.isDeleteEnable
                                ? Row(
                                    children: [
                                      Row(
                                        children: [
                                          IconButton(
                                              onPressed: () {
                                                model.clear();
                                              },
                                              icon: const Icon(Icons.close)),
                                          model.isSelectedAll
                                              ? const Text("All Selected")
                                              : Text(
                                                  '${model.selectIndexList.length} Selected'),
                                        ],
                                      ),
                                      SizedBox(
                                        width: 130.sp,
                                      ),
                                      InkWell(
                                        onTap: () => showDialog(
                                            context: context,
                                            builder: (BuildContext context) =>
                                                AlertDialog(
                                                  actions: [
                                                    Column(
                                                      children: [
                                                        Row(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            // SizedBox(
                                                            //   height: 10.sp,
                                                            // ),
                                                            ZText(
                                                              text:
                                                                  ' Delete History',
                                                              fontSize: 16.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                            ),
                                                            const Icon(
                                                                Icons.close)
                                                          ],
                                                        ),
                                                        SizedBox(
                                                          height: 16.sp,
                                                        ),
                                                        ZText(
                                                          text:
                                                              'Are you sure you want to delete all the items in the history?',
                                                          fontSize: 14.sp,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                        ),
                                                        SizedBox(
                                                          height: 16.sp,
                                                        ),
                                                        Row(
                                                          children: [
                                                            Expanded(
                                                              flex: 5,
                                                              child: Container(
                                                                height: 45.sp,
                                                                width: 160.sp,
                                                                decoration: BoxDecoration(
                                                                    borderRadius:
                                                                        BorderRadius.circular(14
                                                                            .sp),
                                                                    color: Colors
                                                                        .grey),
                                                                child: Center(
                                                                  child: ZText(
                                                                    text:
                                                                        'Cancle',
                                                                    fontSize:
                                                                        14.sp,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            SizedBox(
                                                              width: 16.sp,
                                                            ),
                                                            Expanded(
                                                              flex: 5,
                                                              child: Container(
                                                                height: 45.sp,
                                                                width: 160.sp,
                                                                decoration: BoxDecoration(
                                                                    borderRadius:
                                                                        BorderRadius.circular(14
                                                                            .sp),
                                                                    color: Colors
                                                                        .red),
                                                                child: Center(
                                                                  child: ZText(
                                                                    text:
                                                                        'Delete',
                                                                    fontSize:
                                                                        14.sp,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                  ),
                                                                ),
                                                              ),
                                                            )
                                                          ],
                                                        )
                                                      ],
                                                    )
                                                  ],
                                                )),
                                        child: SizedBox(
                                          height: 30.sp,
                                          child: const Image(
                                              image: AssetImage(
                                                  'assets/icons/delete.png')),
                                        ),
                                      ),
                                      IconButton(
                                          onPressed: () {
                                            model.selectAll(true);
                                          },
                                          icon: Icon(
                                            Icons.check_box,
                                            color: model.isSelectedAll
                                                ? Colors.green
                                                : Colors.grey,
                                          ))
                                    ],
                                  )
                                : model.isSearchSelect
                                    ? EnableSearch(
                                        model: model,
                                      )
                                    : DefaultHistory(
                                        model: model,
                                      ),
                            // SizedBox(
                            //   height: 30.sp,
                            // ),
                            SizedBox(
                              height: 650.sp,
                              child: ListView.builder(
                                  itemCount: 10,
                                  padding: const EdgeInsets.only(top: 10),
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return Column(
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            model.updateList(index);
                                          },
                                          onLongPress: () {
                                            model.updateDelete(true);
                                          },
                                          child: Container(
                                            width: 396.sp,
                                            height: 90.sp,
                                            decoration: ShapeDecoration(
                                              color: model.selectIndexList
                                                      .contains(index)
                                                  ? const Color(0xff0A8432)
                                                      .withOpacity(0.1)
                                                  : const Color(0xFFF5F5F5),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                            ),
                                            child: Row(
                                              children: [
                                                Container(
                                                  width: 70.sp,
                                                  height: 70.sp,
                                                  decoration: ShapeDecoration(
                                                    image: const DecorationImage(
                                                        image: AssetImage(
                                                            'assets/images/pview1.png')),
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              15),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 20.sp,
                                                ),
                                                Column(
                                                  children: [
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                top: 15.sp)),
                                                    ZText(
                                                      text:
                                                          'Chips, Baked Potatos, chetoos',
                                                      fontSize: 14.sp,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                    SizedBox(
                                                      height: 13.sp,
                                                    ),
                                                    Row(
                                                      children: [
                                                        SizedBox(
                                                            height: 20.sp,
                                                            child: const Image(
                                                                image: AssetImage(
                                                                    'assets/icons/calender.png'))),
                                                        const ZText(
                                                          text: ' 07 Aug,2024',
                                                        ),
                                                        SizedBox(
                                                          width: 20.sp,
                                                        ),
                                                        SizedBox(
                                                            height: 20.sp,
                                                            child: const Image(
                                                                image: AssetImage(
                                                                    'assets/icons/clock1.png'))),
                                                        const ZText(
                                                          text: ' 11:33 am',
                                                        )
                                                      ],
                                                    ),
                                                  ],
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 19.sp,
                                        )
                                      ],
                                    );
                                  }),
                            ),
                          ],
                        ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(padding: EdgeInsets.only(left: 80.sp)),
                      SizedBox(
                          height: 70.sp,
                          child: const Image(
                              image: AssetImage('assets/icons/Group 4.png'))),
                      SizedBox(
                        width: 30.sp,
                      ),
                      SizedBox(
                          height: 50.sp,
                          child: const Image(
                              image:
                                  AssetImage('assets/icons/greenhistory.png'))),
                    ],
                  ),
                  SizedBox(
                    height: 20.sp,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
