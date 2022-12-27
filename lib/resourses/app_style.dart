import 'package:google_fonts/google_fonts.dart';
import 'package:figma_task/resourses/app_colors.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextStyleManager {
  static TextStyle degreeBartext = GoogleFonts.ubuntuCondensed(
      fontStyle: FontStyle.normal,
      color: ColorManager.iconColor,
      fontSize: 22.36.sp);
  static TextStyle timeBartext = GoogleFonts.ubuntuCondensed(
      fontStyle: FontStyle.normal,
      color: ColorManager.iconColor,
      fontSize: 10.sp);
  static TextStyle lineundertimeBartext = GoogleFonts.ubuntuCondensed(
      fontStyle: FontStyle.normal,
      color: ColorManager.iconColor,
      fontSize: 11.sp);
  static TextStyle firstparttimeBartext = GoogleFonts.ubuntu(
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w700,
      color: ColorManager.whiteTextColor,
      fontSize: 40.sp);
  static TextStyle secondparttimeBartext = GoogleFonts.ubuntu(
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w500,
      color: ColorManager.greenTextColor,
      fontSize: 40.sp);
  static TextStyle dayparttimeBartext = TextStyle(
      fontStyle: FontStyle.normal,
      color: ColorManager.whiteTextColor,
      fontWeight: FontWeight.w300,
      fontSize: 20.sp);
  static TextStyle mondayText = GoogleFonts.ubuntuCondensed(
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w400,
      color: ColorManager.whiteTextColor,
      fontSize: 14.sp);
  static TextStyle dateundermondayText = GoogleFonts.ubuntuCondensed(
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w400,
      color: ColorManager.greenTextColor,
      fontSize: 10.sp);
  static TextStyle restdateundermondayText = GoogleFonts.ubuntuCondensed(
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w400,
      color: ColorManager.whiteTextColor,
      fontSize: 11.sp);
}
