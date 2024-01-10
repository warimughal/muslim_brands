// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, unused_element

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:muslim_brands/views/productsviewScreens/relatedproductsScreen.dart';

import '../../Widgets/productsviewScreen/customproductscanappBar.dart';
//import 'package:muslim_brand_project_flutter/view/productsviewScreens/relatedproductsScreen.dart';
//import 'package:muslim_brand_project_flutter/widgets/productsviewScreen/customproductscanappBar.dart';

class ProductScanViewScreen extends StatefulWidget {
  const ProductScanViewScreen({super.key});

  @override
  State<ProductScanViewScreen> createState() => _ProductScanViewScreenState();
}

class _ProductScanViewScreenState extends State<ProductScanViewScreen> {
// Add a function to show the dialog
  void _showDeleteConfirmationDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Column(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  icon: Icon(Icons.close),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),
              Text(
                'Delete',
                style: TextStyle(
                  color: Color(0xFF222222),
                  fontSize: 16,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
            ],
          ),
          content: Text(
            'Are you sure you want to delete Scan Result?',
            style: TextStyle(
              color: Color(0xFF222222),
              fontSize: 14,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
              height: 0,
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 100,
                    height: 45,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 12),
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                      color: Color(0xFFF5F5F5),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 52,
                          child: Text(
                            'Cancel',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF666666),
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 45,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 12),
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                      color: Colors.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 52,
                          child: Text(
                            'Delete',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomProductScanAppBar(
        title: 'Add a Brand',
        backgroundColor: Colors.white,
        iconBackgroundColor: Color(0x190A8432),
        onTrashPressed: () {
          _showDeleteConfirmationDialog(context);
        },
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: 396.sp,
              height: 190.sp,
              decoration: ShapeDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/productview1.png'),
                  fit: BoxFit.cover,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
            Container(
              width: 396.sp,
              height: 64.sp,
              decoration: ShapeDecoration(
                color: Color(0xFFF5F5F5),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/calendar.png',
                    width: 40.sp,
                    height: 40.sp,
                  ),
                  Text(
                    '07 Aug,2023',
                    style: TextStyle(
                      color: Color(0xFF666666),
                      fontSize: 12.sp,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                  SizedBox(
                    width: 8.sp,
                  ),
                  Image.asset(
                    'assets/images/clock.png',
                    width: 40.sp, // Adjust the width as needed
                    height: 40.sp, // Adjust the height as needed
                  ),
                  Text(
                    '01:23 PM',
                    style: TextStyle(
                      color: Color(0xFF666666),
                      fontSize: 12.sp,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 20.sp, top: 20.sp, left: 10.sp),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Padding(padding: EdgeInsets.only(right: 20.sp, top: 20.sp)),
                  Text(
                    'Related Products',
                    style: TextStyle(
                      color: Color(0xFF222222),
                      fontSize: 16.sp,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                  SizedBox(width: 5.sp),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RelatedProductsScreen()));
                    },
                    child: SizedBox(
                      height: 30.sp,
                      child: Image(
                          image:
                              AssetImage('assets/icons/Group 312170398.png')),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 500.sp,
                child: Expanded(
                    child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3, // Number of columns
                    crossAxisSpacing: 8.0, // Spacing between columns
                    mainAxisSpacing: 8.0, // Spacing between rows
                  ),
                  itemCount: 50,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 90,
                      height: 130,
                      decoration: ShapeDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/pview1.png'),
                          fit: BoxFit.fill,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
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
