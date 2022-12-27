import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:figma_task/resourses/app_colors.dart';
import 'package:figma_task/resourses/app_images.dart';
import 'package:figma_task/resourses/app_string.dart';
import 'package:figma_task/screens/shred_screens/shared_rounded_buttun.dart';
import 'package:figma_task/screens/shred_screens/slider_model.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 12, top: 12).r,
      color: ColorManager.girlColor,
      height: 238.h,
      width: 181.w,
      child: Column(
        children: [
          Row(
            children: [
              Container(
                padding:
                    EdgeInsets.only(left: 3, top: 4, right: 11, bottom: 5.8).r,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0).r,
                  border: Border.all(color: Colors.grey),
                ),
                child: Image.asset(AppImagesManager.girlIcon),
              ),
              SizedBox(
                width: 3.w,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 3, right: 18).r,
                    child: SizedBox(
                        width: 70.w,
                        // height: 40.h,
                        child: Row(
                          children: [
                            Text(
                              "Figma".toUpperCase(),
                              style: GoogleFonts.ubuntuCondensed(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                                color: Color(0xffffffff),
                              ),
                            ),
                            Text(
                              "30 Day’s ".toUpperCase(),
                              style: GoogleFonts.ubuntuCondensed(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff5ba291),
                              ),
                            ),
                          ],
                        )),
                  ),
                  Text(
                    "challenge".toUpperCase(),
                    style: GoogleFonts.ubuntuCondensed(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      color: Color(0xffffffff),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 49).r,
                    child: SizedBox(
                      width: 39.w,
                      height: 11.h,
                      child: Text(
                        AppStringManager.DeepakRay,
                        style: GoogleFonts.ubuntuCondensed(
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                            fontSize: 9.sp),
                      ),
                    ),
                  ),
                  SizedBox(height: 8.w),
                  Row(
                    children: [
                      SharedButton(
                          padding: EdgeInsets.symmetric(
                              vertical: 3.h, horizontal: 5.w),
                          fontsize: 8.sp,
                          height: 16.h,
                          width: 47.w,
                          textLabel: AppStringManager.DesignArt),
                      SizedBox(width: 2.w),
                      SharedButton(
                          padding: EdgeInsets.symmetric(
                              vertical: 3.h, horizontal: 2.w),
                          width: 20.w,
                          fontsize: 8.sp,
                          height: 16.h,
                          textLabel: AppStringManager.Globle)
                    ],
                  ),
                ],
              ),
            ],
          ),
          SliderScreen(),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 2.5, bottom: 5).r,
                child: SizedBox(
                  height: 11.h,
                  width: 14.w,
                  child: Text(
                    "46%",
                    style: GoogleFonts.ubuntuCondensed(
                      fontSize: 9.sp,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff5DA291),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 101.w,
              ),
              Padding(
                padding: EdgeInsets.only(top: 2.5, bottom: 5, right: 13).r,
                child: SizedBox(
                  height: 11.h,
                  width: 41.w,
                  child: RichText(
                    maxLines: 2,
                    textDirection: TextDirection.ltr,
                    text: TextSpan(
                        text: '26 '.toUpperCase(),
                        style: GoogleFonts.ubuntuCondensed(
                            fontSize: 9.sp,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xff5ba291)),
                        children: <TextSpan>[
                          TextSpan(
                            text: "Day's left ",
                            style: GoogleFonts.ubuntuCondensed(
                              fontSize: 9.sp,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xffffffff),
                            ),
                          ),
                        ]),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 7).r,
            child: Container(
              width: 162.w,
              height: 55.h,
              child: Text(
                AppStringManager.longtext,
                style: GoogleFonts.ubuntuCondensed(
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w400,
                    color: ColorManager.whiteTextColor,
                    fontSize: 9.sp),
              ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 0, bottom: 0).r,
                child: Container(
                  height: 22.h,
                  width: 64.22.w,
                  child: Stack(
                    children: <Widget>[
                      Image.asset(
                        AppImagesManager.personeightIcon,
                        width: 22.67.w,
                        height: 22.h,
                      ),
                      Positioned(
                        left: 15.r,
                        child: Image.asset(AppImagesManager.persontenIcon,
                            width: 22.67.w, height: 22.h),
                      ),
                      Positioned(
                        left: 28.r,
                        child: Image.asset(AppImagesManager.personninetIcon,
                            width: 22.w, height: 22.h),
                      ),
                      Positioned(
                        left: 45.r,
                        child: CircleAvatar(
                          backgroundColor: ColorManager.greenTextColor,
                          radius: 9.r,
                          child: Text(
                            '3+',
                            style: GoogleFonts.ubuntuCondensed(
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w400,
                                color: ColorManager.whiteTextColor,
                                fontSize: 12.65.sp),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Spacer(),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 12).r,
                    child: SizedBox(
                      width: 33.w,
                      height: 11.h,
                      child: Text(
                        AppStringManager.joinedon,
                        style: GoogleFonts.ubuntuCondensed(
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w400,
                            color: ColorManager.whiteTextColor,
                            fontSize: 9.sp),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 12, bottom: 5).r,
                    child: SizedBox(
                      width: 47.11.w,
                      height: 11.h,
                      child: Row(
                        children: [
                          Text(
                            '03',
                            style: GoogleFonts.ubuntuCondensed(
                                fontStyle: FontStyle.normal,
                                color: ColorManager.greenTextColor,
                                fontSize: 10.sp),
                          ),
                          Text(
                            'May 2021',
                            style: GoogleFonts.ubuntuCondensed(
                                fontStyle: FontStyle.normal,
                                color: ColorManager.whiteTextColor,
                                fontSize: 10.sp),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
