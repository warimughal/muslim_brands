// ignore_for_file: file_names, prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, unused_element, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
//import 'package:muslim_brand_project_flutter/widgets/SettingsScreen/custom%20appBar.dart';

import '../../Widgets/CustombrandTextfield.dart';
import '../../Widgets/SettingsScreen/custom appBar.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  final productNameController = TextEditingController();
  final productEANController = TextEditingController();
  final productSKUController = TextEditingController();
  final productpriceController = TextEditingController();
  final productdescriptionController = TextEditingController();
  final producttypeController = TextEditingController();
  final productavailabilityController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Product Details',
        backgroundColor: Colors.white,
        iconBackgroundColor: Color(0x190A8432),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 396,
                height: 200,
                decoration: ShapeDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/productimage.png',
                    ),
                    fit: BoxFit.fill,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Text(
                  'Company Name',
                  style: TextStyle(
                    color: Color(0xFF222222),
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8, left: 8),
              child: SizedBox(
                height: 60.sp,
                child: TextField(
                  //  controller: companyNameController,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFF5F5F5),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 5,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomBrandTextField(
                          text1: 'Company ID',
                        ),
                        SizedBox(
                          height: 10.sp,
                        ),
                        CustomBrandTextField(
                          text1: 'Company Address',
                        ),
                        SizedBox(
                          height: 10.sp,
                        ),
                        CustomBrandTextField(
                          text1: 'Product Category',
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 10.sp,
                ),
                Expanded(
                  flex: 5,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomBrandTextField(
                          text1: 'Company Email',
                        ),
                        SizedBox(
                          height: 10.sp,
                        ),
                        CustomBrandTextField(
                          text1: 'Contact Number',
                        ),
                        SizedBox(
                          height: 10.sp,
                        ),
                        CustomBrandTextField(
                          text1: 'Brand Available',
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 50.sp, left: 14.sp, right: 14.sp),
              child: Container(
                width: double.infinity,
                height: 46,
                decoration: ShapeDecoration(
                  color: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: TextButton(
                  onPressed: () {
                    _showDialog(context);
                    // Check if all fields are filled
                    // if (_areAllFieldsFilled()) {
                    //   // Show dialog if all fields are filled
                    //   _showDialog(context);
                    // } else {
                    //   // Show an error message or take any other action
                    // }
                  },
                  child: Text(
                    'Save',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.56,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

// Function to check if all fields are filled
  bool _areAllFieldsFilled() {
    return productNameController.text.isNotEmpty &&
        productEANController.text.isNotEmpty &&
        productSKUController.text.isNotEmpty &&
        productpriceController.text.isNotEmpty &&
        productdescriptionController.text.isNotEmpty &&
        producttypeController.text.isNotEmpty &&
        productavailabilityController.text.isNotEmpty;
  }

  // Function to show the dialog
  void _showDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
            backgroundColor: Colors.white,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Container(
              width: 348,
              height: 250,
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
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 60,
                            height: 60,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(),
                            child: Image.asset(
                              'assets/images/tick.png',
                              width: 30,
                              height: 30,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Details Saved',
                          style: TextStyle(
                            color: Color(0xFF222222),
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        ),
                        const SizedBox(height: 24),
                        SizedBox(
                            width: 348,
                            child: SizedBox(
                              width: 348,
                              child: Center(
                                child: Text(
                                  'Your business details are saved in our database. A company representative will contact you soon!',
                                  style: TextStyle(
                                    color: Color(0xFF222222),
                                    fontSize: 14,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                              ),
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            ));
      },
    );
  }
}
