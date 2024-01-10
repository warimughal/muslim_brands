// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
//import 'package:muslim_brand_project_flutter/view/ProfileScreen/addImage.dart';
//import 'package:muslim_brand_project_flutter/widgets/ProfileScreen/customprofileappBar.dart';
import 'package:muslim_brands/views/ProfileScreen/addImage.dart';

import '../../Widgets/CustombrandTextfield.dart';
import '../../Widgets/ProfileScreen/customprofileappBar.dart';

class AddABrand extends StatefulWidget {
  const AddABrand({super.key});

  @override
  State<AddABrand> createState() => _AddABrandState();
}

class _AddABrandState extends State<AddABrand> {
  final companyNameController = TextEditingController();
  final companyIDController = TextEditingController();
  final companyEmailController = TextEditingController();
  final companyAddressController = TextEditingController();
  final contactNumberController = TextEditingController();
  final productCategoryController = TextEditingController();
  final brandAvailabilityController = TextEditingController();
  final personNameController = TextEditingController();
  final personEmailController = TextEditingController();
  final designationController = TextEditingController();
  final personContactNumberController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  bool _autoValidate = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomProfileAppBar(
        title: 'Add a Brand',
        backgroundColor: Colors.white,
        iconBackgroundColor: Color(0x190A8432),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          autovalidateMode: _autoValidate
              ? AutovalidateMode.always
              : AutovalidateMode.disabled,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                  controller: companyNameController,
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
            // Column(
            //   crossAxisAlignment: CrossAxisAlignment.start,
            //   children: [
            //     CustomRowBrand(
            //       text1: 'Company ID',
            //       text2: 'Company Email',
            //     ),
            //     CustomRowTextField(),
            //     CustomRowBrand(
            //       text1: 'Compmany Address',
            //       text2: 'Contact Number',
            //     ),
            //     CustomRowTextField(),
            //     CustomRowBrand(
            //       text1: 'Product Category',
            //       text2: 'Brand Availability',
            //     ),
            //     CustomRowTextField(),
            //   ],
            // ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Upload Picture',
                    style: TextStyle(
                      color: Color(0xFF222222),
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                  SizedBox(
                    height: 10.sp,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProductDetails()));
                    },
                    child: Container(
                      width: 72,
                      height: 72,
                      decoration: ShapeDecoration(
                        color: Color(0xFFF5F5F5),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Center(
                        child: Image.asset(
                          'assets/images/add.png',
                          width: 48,
                          height: 48,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.sp,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Company Person Details',
                      style: TextStyle(
                        color: Color(0xFF222222),
                        fontSize: 20,
                        fontFamily: 'Open Sans',
                        fontWeight: FontWeight.w600,
                        height: 0,
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
                                text1: 'Name',
                              ),
                              SizedBox(
                                height: 10.sp,
                              ),
                              CustomBrandTextField(
                                text1: 'Designation',
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
                                text1: 'Email',
                              ),
                              SizedBox(
                                height: 10.sp,
                              ),
                              CustomBrandTextField(
                                text1: 'Contact Number',
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  // CustomRowBrand(
                  //   text1: 'Name',
                  //   text2: 'Email',
                  // ),
                  // CustomRowTextField(),
                  // CustomRowBrand(
                  //   text1: 'Designation',
                  //   text2: 'Contact Number',
                  // ),
                  // CustomRowTextField(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 396.sp,
                      height: 46.sp,
                      decoration: ShapeDecoration(
                        color: _formKey.currentState?.validate() == true
                            ? Colors.green
                            : Color(0xFF999999),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Done',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.56.sp,
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
          ]),
        ),
      ),
    );
  }
}
