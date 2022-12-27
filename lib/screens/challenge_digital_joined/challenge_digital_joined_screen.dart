import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:saudi_ui_task/recources/app_color.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_toggle_tab/flutter_toggle_tab.dart';
import 'package:figma_task/resourses/app_colors.dart';
import 'package:figma_task/resourses/app_images.dart';
import 'package:figma_task/screens/shred_screens/shared_rounded_buttun.dart';
import 'package:figma_task/screens/shred_screens/slider_model.dart';
import 'package:figma_task/screens/shred_screens/tasks.dart';
import 'package:figma_task/screens/shred_screens/today_task_model.dart';

class HomePageTwo extends StatefulWidget {
  const HomePageTwo({super.key});

  @override
  State<HomePageTwo> createState() => _HomePageTwoState();
}

class _HomePageTwoState extends State<HomePageTwo> {
  List<String> tasksContent = [
    "Chemical Reaction/ Letter to god",
    "Rise of nationalism in Europe/ Dust of snow/ Fire and ice",
    "Rise of nationalism in Europe/ Dust of snow/ Fire and ice",
    "Rise of nationalism in Europe/ Dust of snow/ Fire and ice",
    "Rise of nationalism in Europe/ Dust of snow/ Fire and ice",
    "Rise of nationalism in Europe/ Dust of snow/ Fire and ice",
    "Rise of nationalism in Europe/ Dust of snow/ Fire and ice",
  ];
  List<String> labels = ['Tasks', 'People'];
  String text = 'PEOPLE JOINED';

  var _listGenderEmpty = ["Tasks", "People"];
  double _currentSliderValue = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primaryColor,
      appBar: AppBar(
        toolbarHeight: 35.h,
        elevation: 0,
        backgroundColor: ColorManager.primaryColor,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Container(
              width: 10.w,
              height: 17.h,
              child: Image.asset(
                AppImagesManager.arrowbackcIcon,
              )),
        ),
        actions: [
          Container(
              padding: EdgeInsets.all(10).r,
              decoration: BoxDecoration(
                  color: Color(0xff2a313a),
                  borderRadius: BorderRadius.circular(16).r),
              width: 48.w,
              child: Row(
                children: [
                  Image.asset(
                    AppImagesManager.penIcon,
                  ),
                  SizedBox(
                    width: 4.93.w,
                  ),
                  Container(
                      child: Text(
                    'EDIT',
                    style: GoogleFonts.ubuntuCondensed(fontSize: 10.sp),
                  ))
                ],
              )),
          SizedBox(
            width: 20.w,
          ),
          Container(
            margin: EdgeInsets.only(right: 26).r,
            width: 24.w,
            height: 24.h,
            child: Image.asset(AppImagesManager.qrIcon),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 26).r,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                      padding: EdgeInsets.only(
                        top: 5.51.h,
                        bottom: 4.14.h,
                        right: 5.51.w,
                        left: 4.14.w,
                      ),
                      decoration: BoxDecoration(
                          border: Border.all(color: Color(0xffffffff)),
                          borderRadius: BorderRadius.circular(8.r)),
                      child: Image.asset(
                        AppImagesManager.girlIcon,
                        width: 92.35.w,
                        height: 92.35.h,
                      )),
                  SizedBox(
                    width: 12.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 116.w,
                        height: 45.h,
                        child: RichText(
                          maxLines: 2,
                          textDirection: TextDirection.ltr,
                          text: TextSpan(
                              text: 'FIGMA '.toUpperCase(),
                              style: GoogleFonts.ubuntuCondensed(
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xffffffff)),
                              children: <TextSpan>[
                                TextSpan(
                                  text: "30Day’s ".toUpperCase(),
                                  style: GoogleFonts.ubuntuCondensed(
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff5ba291),
                                  ),
                                ),
                                TextSpan(
                                  text: "challenge".toUpperCase(),
                                  style: GoogleFonts.ubuntuCondensed(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xffffffff),
                                  ),
                                ),
                              ]),
                        ),
                      ),
                      SizedBox(
                        height: 5.49.h,
                      ),
                      Text(
                        "Deepak Ray",
                        style: GoogleFonts.ubuntuCondensed(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: Color(0xffffffff),
                        ),
                      ),
                      SizedBox(height: 8.w),
                      Row(
                        children: [
                          SharedButton(
                            textLabel: "Design & Art",
                            fontsize: 11.65.sp,
                            padding: EdgeInsets.symmetric(
                                    vertical: 3.88, horizontal: 6.47)
                                .r,
                                height: 22.h,
                                width: 67.w,
                          ),
                          SizedBox(width: 5.6.w),
                          //3.88*6.47
                          SharedButton(padding: EdgeInsets.symmetric(vertical: 3.88.h,horizontal: 6.67.w),
                              height: 22.h,
                              width: 50.w,
                              textLabel: "Personal",
                              fontsize: 11.65.sp),
                        ],
                      ),
                      SizedBox(height: 13.14.w),
                    ],
                  ),
                ],
              ),
              SizedBox(
                width: 323.w,
                height: 60.h,
                child: Text(
                  "People often overlook the power of simple walking. It increases cardiovascular and pulmonary. Optimize your schedule for this approach by blocking out time at the start of every day...",
                  style: GoogleFonts.ubuntuCondensed(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xffffffff),
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                height: 11.4.h,
                width: 323.w,
                decoration: BoxDecoration(color: Color(0xff262830)),
                child: Container(
                  padding: EdgeInsets.fromLTRB(0, 4.5, 26, 4.5).r,
                  height: 11.4.h,
                  width: 250.w,
                  decoration: BoxDecoration(
                      color: Color(0xff262830),
                      borderRadius: BorderRadius.circular(12.r)),
                  child: SliderTheme(
                    data: SliderThemeData(
                      trackHeight: 2.89.h,
                      thumbShape: RoundSliderThumbShape(
                          enabledThumbRadius: 8.0,
                          elevation: 0,
                          disabledThumbRadius: 8),
                      thumbColor: Colors.transparent,
                      activeTrackColor: Color(0xff5CA291),
                      inactiveTrackColor: Color(0xff262830),
                    ),
                    child: Slider(
                      value: _currentSliderValue,
                      min: 0,
                      max: 100,
                      divisions: 100,
                      label: _currentSliderValue.round().toString(),
                      onChanged: (double value) {
                        setState(() {
                          _currentSliderValue = value;
                        });
                      },
                    ),
                  ),
                ),
                // child: SliderScreen(),
              ),
              Row(
                children: [
                  Padding(
                    padding:
                        EdgeInsets.only(top: 2.97, bottom: 21, right: 310).r,
                    child: SizedBox(
                      height: 20.h,
                      width: 22.w,
                      child: Text(
                        "46%",
                        style: GoogleFonts.ubuntuCondensed(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff5DA291),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 2.97.h,
                      bottom: 20.h,
                    ),
                    child: SizedBox(
                      height: 22.h,
                      width: 64.w,
                      child: RichText(
                        maxLines: 2,
                        textDirection: TextDirection.ltr,
                        text: TextSpan(
                            text: '26 '.toUpperCase(),
                            style: GoogleFonts.ubuntuCondensed(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w400,
                                color: const Color(0xff5ba291)),
                            children: <TextSpan>[
                              TextSpan(
                                text: "Day's left ",
                                style: GoogleFonts.ubuntuCondensed(
                                  fontSize: 11.sp,
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
              SizedBox(
                height: 20.h,
              ),
              TodatTaskRowModelScreen(_listGenderEmpty, text,
                  Image.asset(AppImagesManager.sharecirclekcIcon)),
              SizedBox(
                height: 19.63.h,
              ),
              SizedBox(
                height: 436.h,
                child: Column(
                  children: [
                    Expanded(
                      child: ListView.builder(
                          padding: EdgeInsets.only(bottom: 10).r,
                          shrinkWrap: true,
                          itemCount: tasksContent.length,
                          itemBuilder: ((context, index) {
                            return TODoCard(
                              taskContent: tasksContent[index],
                              number: index + 1,
                            );
                          })),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
