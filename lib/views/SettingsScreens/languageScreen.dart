// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:muslim_brands/views/SettingsScreens/settingsScreen.dart';

import '../../Widgets/SettingsScreen/custom appBar.dart';
// import 'package:muslim_brand_project_flutter/view/SettingsScreens/settingsScreen.dart';
// import 'package:muslim_brand_project_flutter/widgets/SettingsScreen/custom%20appBar.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({super.key});

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  int selectedLanguageIndex = -1;
  TextEditingController searchController = TextEditingController();
  List<String> allLanguages = [
    'English',
    'Arabic (العربية)',
    'Hindi (हिंदी)',
    'Portuguese (Português)',
    'German (Deutsch)',
    'Japanese (日本)',
    'Korean (한국인)',
    'Chinese (中国人)',
    'Swedish (svenska)',
    'Polish (Polski)',
  ];
  List<String> filteredLanguages = [];

  @override
  void initState() {
    super.initState();
    filteredLanguages = List.from(allLanguages);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Language',
        backgroundColor: Colors.white,
        iconBackgroundColor: Color(0x190A8432),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: searchController,
                onChanged: onSearchTextChanged,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0x190A8432),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'assets/images/search-alt_svgrepo.com.png',
                      width: 30.sp,
                      height: 30.sp,
                    ),
                  ),
                  hintText: 'Search Language',
                  hintStyle: TextStyle(
                    color: Color(0xFF222222),
                    fontSize: 14.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                height: 490.sp,
                child: ListView.builder(
                  itemCount: filteredLanguages.length,
                  itemBuilder: (context, index) {
                    return _buildLanguageContainer(
                      filteredLanguages[index],
                      'assets/images/language${index + 1}.png',
                      index,
                    );
                  },
                ),
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SettingsScreen(),
                    ),
                  );
                },
                child: Container(
                  width: 400.sp,
                  height: 56.sp,
                  decoration: ShapeDecoration(
                    color: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Done',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.sp,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void onSearchTextChanged(String query) {
    setState(() {
      filteredLanguages = allLanguages
          .where((language) =>
              language.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  Widget _buildLanguageContainer(String language, String imagePath, int index) {
    return Padding(
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    imagePath,
                    width: 30.sp,
                    height: 30.sp,
                  ),
                ),
                SizedBox(
                  width: 5.sp,
                ),
                Text(
                  language,
                  style: TextStyle(
                    color: Color(0xFF222222),
                    fontSize: 14.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ],
            ),
            Radio<int>(
              value: index,
              groupValue: selectedLanguageIndex,
              onChanged: (int? value) {
                setState(() {
                  selectedLanguageIndex = value!;
                });
              },
              activeColor: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}
