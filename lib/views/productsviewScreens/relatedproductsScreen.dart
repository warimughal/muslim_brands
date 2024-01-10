// ignore_for_file: file_names, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:muslim_brands/views/productsviewScreens/bakedchipsScreen.dart';
// import 'package:muslim_brand_project_flutter/view/productsviewScreens/bakedchipsScreen.dart';
// import 'package:muslim_brand_project_flutter/widgets/SettingsScreen/custom%20appBar.dart';

import '../../Widgets/SettingsScreen/custom appBar.dart';

class RelatedProductsScreen extends StatefulWidget {
  const RelatedProductsScreen({super.key});

  @override
  State<RelatedProductsScreen> createState() => _RelatedProductsScreenState();
}

class _RelatedProductsScreenState extends State<RelatedProductsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Related Products',
        backgroundColor: Colors.white,
        iconBackgroundColor: Color(0x190A8432),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 900.sp,
                child: Expanded(
                    child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3, // Number of columns
                    crossAxisSpacing: 8.0, // Spacing between columns
                    mainAxisSpacing: 8.0, // Spacing between rows
                  ),
                  itemCount: 100,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BakedChipsScreen()));
                      },
                      child: Container(
                        width: 90.sp,
                        height: 130.sp,
                        decoration: ShapeDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/pview1.png'),
                            fit: BoxFit.fill,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                    );
                  },
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
