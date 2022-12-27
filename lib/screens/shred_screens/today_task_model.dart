import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_toggle_tab/flutter_toggle_tab.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:figma_task/resourses/app_colors.dart';

class TodatTaskRowModelScreen extends StatefulWidget {
  TodatTaskRowModelScreen(this._listGenderEmpty, this.label, this.widget);
  List<String> _listGenderEmpty = [];
  String label;
  Widget widget;

  @override
  State<TodatTaskRowModelScreen> createState() =>
      _TodatTaskRowModelScreenState();
}

class _TodatTaskRowModelScreenState extends State<TodatTaskRowModelScreen> {
  var _tabIconIndexSelected = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20,bottom: 20).r,
      child: Row(children: [
        Text(
          widget.label.toUpperCase(),
          style: GoogleFonts.ubuntuCondensed(
              fontStyle: FontStyle.normal,
              color: ColorManager.greytexttColor,
              fontSize: 23.sp),
        ),
        Spacer(flex: 3),
        Container(
          height: 36.h,
          width: 93.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(6).r),
            border: Border.all(color: Colors.grey),
          ),
          child: FlutterToggleTab(
            unSelectedBackgroundColors: [
              ColorManager.primaryColor,
              ColorManager.primaryColor,
            ],
            selectedBackgroundColors: [
              ColorManager.greenTextColor,
              ColorManager.greenTextColor,
            ],
            width: 20.w,
            height: 19.h,
            borderRadius: 6.r,
            selectedIndex: _tabIconIndexSelected,
            selectedTextStyle: TextStyle(
              color: ColorManager.greytexttColor,
              fontSize: 10.sp,
            ),
            unSelectedTextStyle: TextStyle(
              color: ColorManager.greytexttColor,
              fontSize: 10.sp,
            ),
            labels: widget._listGenderEmpty,
           
            selectedLabelIndex: (index) {
              setState(() {
                _tabIconIndexSelected = index;
              });
            },
            marginSelected:
                EdgeInsets.symmetric(horizontal: 2, vertical: 2).r,
          ),
        ),
        Spacer(flex: 1),
        Container(
          width: 30.w,
          height: 30.h,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.all(Radius.circular(6).r)),
          child: Center(child: widget.widget),
        ),
      ]),
    );
  }
}
