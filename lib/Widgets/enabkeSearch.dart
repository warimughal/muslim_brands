// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../provider/history_provider.dart';

class EnableSearch extends StatelessWidget {
  final HistoryProvider model;
  const EnableSearch({
    required this.model,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
            onPressed: () {
              model.updateSearch(false);
            },
            icon: const Icon(Icons.arrow_back)),
        SizedBox(
          width: 20.sp,
        ),
        SizedBox(
          height: 40.sp,
          width: 260.sp,
          child: TextField(
            decoration: InputDecoration(
                hintText: "Chips",
                contentPadding: const EdgeInsets.only(bottom: 10, left: 20),
                filled: true,
                fillColor: const Color(0xff0A8432).withOpacity(0.1),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none),
                suffix: IconButton(
                  icon: const Icon(
                    Icons.close_sharp,
                  ),
                  onPressed: () {
                    model.updateSearch(false);
                  },
                )),
          ),
        )
      ],
    );
  }
}
