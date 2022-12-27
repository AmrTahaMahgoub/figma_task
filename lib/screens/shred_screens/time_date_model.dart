import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:figma_task/resourses/app_colors.dart';
import 'package:figma_task/resourses/app_images.dart';
import 'package:figma_task/resourses/app_string.dart';
import 'package:figma_task/resourses/app_style.dart';

class TimeAndDateModel extends StatelessWidget {
  const TimeAndDateModel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
     // height: 250.h,
      //  width:200.w ,
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding:
                EdgeInsets.only(left: 0, bottom: 9.46, right: 40.15, top: 44.31)
                    .r,
            child: Image.asset(
              AppImagesManager.twoIcon,
              width: 110.85.w,
              height: 75.34.h,
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
            children: [
              Container(
                  padding: EdgeInsets.only(
                          left: 1.04, bottom: 15.57,  top: 0)
                      .r,
                  // width: 108.05.w,
                  // height: 75.44.h,
                  child: Image.asset(
                    AppImagesManager.threeIcon,
                    width: 95.w,
                    height: 75.44.h,
                  )),
              Container(
                padding: EdgeInsets.only(top: 48,
                  right: 11.59,
                ).r,
                // width: 23.w,
                // height: 24.h,
                child: Text(
                  '23',
                  style: AppTextStyleManager.dayparttimeBartext,
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.only(left: 32.41, right: 70.59, bottom: 1).r,
            // width: 48.w,
            // height: 16.h,
            child: Text(AppStringManager.MONDAY,
                style: AppTextStyleManager.mondayText),
          ),
          Container(
            // width: 47.w,
            // height: 11.h,
            padding: EdgeInsets.only(left: 33.41, right: 70.59).r,
            child: RichText(
              maxLines: 2,
              textDirection: TextDirection.ltr,
              text: TextSpan(
                  text: '03 '.toUpperCase(),
                  style: GoogleFonts.ubuntuCondensed(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w400,
                      color: ColorManager.greenTextColor),
                  children: <TextSpan>[
                    TextSpan(
                      text: "MAY 2021 ".toUpperCase(),
                      style: GoogleFonts.ubuntuCondensed(
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w400,
                        color: ColorManager.whiteTextColor,
                      ),
                    ),
                  ]),
            ),
          ),
        ],
      ),
    );
    // Container(

    //     color: ColorManager.primaryColor,
    //     height: 270.h,
    //     width: 181.w,
    //     child: Container(
    //       padding: EdgeInsets.only(left: 0).r,
    //       child: Column(
    //         crossAxisAlignment: CrossAxisAlignment.start,
    //         children: [
    //           Text(
    //             '02',
    //             style: AppTextStyleManager.firstparttimeBartext
    //           ),
    //           Row(
    //             crossAxisAlignment: CrossAxisAlignment.baseline,
    //             textBaseline: TextBaseline.alphabetic,
    //             children: [
    //               Text(
    //                 '32',
    //                 style: AppTextStyleManager.secondparttimeBartext
    //               ),
    //               Text(
    //                 '23',
    //                 style: AppTextStyleManager.dayparttimeBartext,
    //               ),
    //             ],
    //           ),
    //           Padding(
    //             padding: const EdgeInsets.only(left: 25).r,
    //             child: Column(
    //               mainAxisAlignment: MainAxisAlignment.center,
    //               children: [
    //                 Text(
    //                   AppStringManager.MONDAY,
    //                   style: AppTextStyleManager.mondayText),
    //               ],
    //             ),
    //           ),
    //           Padding(
    //             padding: const EdgeInsets.only(left: 25).r,
    //             child: Row(

    //               children: [
    //                 Text(
    //                   '03',
    //                   style: AppTextStyleManager.dateundermondayText
    //                 ),
    //                 Text(
    //                   AppStringManager.MAY2021,
    //                   style: AppTextStyleManager.restdateundermondayText
    //                 ),
    //               ],
    //             ),
    //           )
    //         ],
    //       ),
    //     ));
  }
}
