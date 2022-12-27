import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:figma_task/resourses/app_images.dart';
import 'package:figma_task/resourses/app_string.dart';

class TODoCard extends StatelessWidget {
  const TODoCard({
    required this.taskContent,
    required this.number,
    this.text,
    super.key,
  });
 final String? text;
  final String taskContent;
  final int number;

  @override



  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10).r,
      width: 323.w,
      height: 99.h,
      decoration: BoxDecoration(
        color: Color(0xff2a313a),
         ),
      child: Padding(
        //left: 14.w
        padding: EdgeInsets.only(top: 9, bottom: 13, right: 13).r,
        child: Row(
          children: [
           
            RotatedBox(
              quarterTurns: -1,
              child: RichText(
                text: TextSpan(
                  text: text,
                  style: GoogleFonts.ubuntuCondensed(
                      color: Colors.white, fontSize: 10.sp),
                ),
              ),
            ),
            Container(
                padding: EdgeInsets.only(
                    top: 4, bottom: 3, left: 3, right: 4).r,
                decoration: BoxDecoration(
                    border: Border.all(color: Color(0xffffffff)),
                    borderRadius: BorderRadius.circular(8).r),
                child: Image.asset(
                  AppImagesManager.girlIcon,
                  width: 67.w,
                  height: 67.h,
                )),
            SizedBox(
              width: 13.w,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 52.w,
                      height: 13.h,
                      child: Text(
                        AppStringManager.worktodo.toUpperCase(),
                        style: GoogleFonts.ubuntuCondensed(
                          fontSize:9.sp,
                          fontWeight: FontWeight.w400,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 145.w,
                    ),
                    SizedBox(
                      width: 26.w,
                      height: 13.h,
                      child: RichText(
                        maxLines: 1,
                        textDirection: TextDirection.ltr,
                        text: TextSpan(
                            text: AppStringManager.Day.toUpperCase(),
                            style: GoogleFonts.ubuntuCondensed(
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w400,
                                color: Color(0xffffffff)),
                            children: <TextSpan>[
                              TextSpan(
                                text:
                                    "0" + "${number.toString()}".toUpperCase(),
                                style: GoogleFonts.ubuntuCondensed(
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff5ba291),
                                ),
                              ),
                            ]),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 8.h,
                ),
                Text(
                  taskContent,
                  style: GoogleFonts.ubuntuCondensed(
                    fontSize: 9.sp,
                    fontWeight: FontWeight.w400,
                    color: Color(0xffffffff),
                  ),
                ),
                SizedBox(
                  height: 24.h,
                ),
                Row(
                  children: [
                    Text(
                      AppStringManager.Pending.toUpperCase(),
                      style: GoogleFonts.ubuntuCondensed(
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w400,
                        color: Color(0xffFCAD20),
                      ),
                    ),
                    SizedBox(
                      width: 17.w,
                    ),
                    Text(
                      AppStringManager.Duration24hours.toUpperCase(),
                      style: GoogleFonts.ubuntuCondensed(
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff5CA392),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}


