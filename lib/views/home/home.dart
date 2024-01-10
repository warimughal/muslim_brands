// ignore_for_file: avoid_print

import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:muslim_brands/Widgets/custemText.dart';
import 'package:muslim_brands/views/History/history.dart';
import 'package:muslim_brands/views/ProfileScreen/addabrandScreen.dart';
import 'package:muslim_brands/views/SettingsScreens/settingsScreen.dart';
import 'package:muslim_brands/views/productsviewScreens/productscanviewScreen.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isShowPassword = false;
  XFile? _pickedImage;
  String? imageUrl;

  Future<void> _pickImage() async {
    final ImagePicker picker = ImagePicker();
    _pickedImage = await picker.pickImage(source: ImageSource.gallery);
    setState(() {});
    uploadImageToFirebaseStorage(_pickedImage!.path);
  }

  //Image push in firebase

  Future<String> uploadImageToFirebaseStorage(String imagePath) async {
    Reference storageReference = FirebaseStorage.instance
        .ref()
        .child("image/${DateTime.now().millisecondsSinceEpoch}");

    UploadTask uploadTask = storageReference.putFile(File(imagePath));

    await uploadTask.whenComplete(() => print('Image uploaded'));

    imageUrl = await storageReference.getDownloadURL();
    return imageUrl.toString();
  }

  final GlobalKey qrkey = GlobalKey(debugLabel: 'QR');
  QRViewController? controller;
  String scancode = '';
  void _onQRViewCreated(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((scandata) {
      setState(() {
        scancode = scandata.code!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ZText(
                      text: 'MuzCheck',
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w600,
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>
                                    const ProductScanViewScreen()));
                          },
                          child: SizedBox(
                              height: 30.sp,
                              child: const Image(
                                  image: AssetImage('assets/icons/beg.png'))),
                        ),
                        SizedBox(
                          width: 14.sp,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const SettingsScreen()));
                          },
                          child: SizedBox(
                              height: 30.sp,
                              child: const Image(
                                  image:
                                      AssetImage('assets/icons/setting.png'))),
                        ),
                        SizedBox(
                          width: 14.sp,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const AddABrand()));
                          },
                          child: SizedBox(
                              height: 30.sp,
                              child: const Image(
                                  image: AssetImage(
                                      'assets/icons/Group 312170399.png'))),
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 180.sp,
                ),
                Stack(
                  children: [
                    Center(
                      child: Container(
                        height: 204.sp,
                        width: 200.sp,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.sp),
                        ),
                        child: SizedBox(
                          height: 100.sp,
                          width: 100.sp,
                          child: QRView(
                            key: qrkey,
                            onQRViewCreated: _onQRViewCreated,
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: SizedBox(
                          height: 208.sp,
                          width: 208.sp,
                          child: const Image(
                              image: AssetImage('assets/icons/Group33.png'))),
                    )
                  ],
                ),
                SizedBox(
                  height: 150.sp,
                ),
                Container(
                  width: 218.sp,
                  height: 90.sp,
                  color: Colors.transparent,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Column(
                        children: [
                          Container(
                            width: 218.sp,
                            height: 48.sp,
                            decoration: ShapeDecoration(
                              color: const Color(0xFF098331),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(43),
                              ),
                            ),
                            child: Padding(
                              padding:
                                  EdgeInsets.only(left: 15.sp, right: 15.sp),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  IconButton(
                                    onPressed: () {
                                      setState(() {
                                        isShowPassword = !isShowPassword;
                                      });
                                    },
                                    icon: Icon(
                                      !isShowPassword
                                          ? Icons.flash_on
                                          : Icons.flash_off,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Container(
                                    height: 30.sp,
                                    width: 1.sp,
                                    color: Colors.white,
                                  ),
                                  const Icon(
                                    Icons.camera_alt,
                                    color: Colors.white,
                                  ),
                                  Container(
                                    height: 30.sp,
                                    width: 1.sp,
                                    color: Colors.white,
                                  ),
                                  InkWell(
                                    onTap: _pickImage,
                                    child: const Icon(
                                      Icons.camera_enhance_outlined,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                              height: 20.sp,
                              child: const Image(
                                  image:
                                      AssetImage('assets/icons/Polygon 1.png')))
                        ],
                      ),
                      // SizedBox(
                      //     height: 30.sp,
                      //     child: const Image(
                      //         image: AssetImage('assets/icons/Polygon 1.png')))
                    ],
                  ),
                ),
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
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const HistoryScreen()));
                          },
                          child: const Image(
                              image: AssetImage(
                                  'assets/icons/Frame 312170154.png')),
                        )),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
