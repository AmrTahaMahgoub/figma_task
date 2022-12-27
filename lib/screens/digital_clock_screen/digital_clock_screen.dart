import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:figma_task/resourses/app_colors.dart';
import 'package:figma_task/resourses/app_images.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_toggle_tab/flutter_toggle_tab.dart';
import 'package:figma_task/resourses/app_style.dart';
import 'package:figma_task/screens/challenge_digital_joined/challenge_digital_joined_screen.dart';
import 'package:figma_task/screens/shred_screens/profile_model.dart';
import 'package:figma_task/screens/shred_screens/slider_model.dart';
import 'package:figma_task/screens/shred_screens/tasks.dart';
import 'package:figma_task/screens/shred_screens/time_date_model.dart';
import 'package:figma_task/screens/shred_screens/today_task_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> tasksContent = [
    "Chemical Reaction/ Letter to god",
    "Rise of nationalism in Europe/ Dust of snow/ Fire and ice",
    "Rise of nationalism in Europe/ Dust of snow/ Fire and ice",
    "Rise of nationalism in Europe/ Dust of snow/ Fire and ice",
    "Rise of nationalism in Europe/ Dust of snow/ Fire and ice",
    "Rise of nationalism in Europe/ Dust of snow/ Fire and ice",
    "Rise of nationalism in Europe/ Dust of snow/ Fire and ice",
  ];
  List<String> _listGenderEmpty = ["LEFT", "DONE"];
  String label = 'TODAY TASK';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primaryColor,
      body: Padding(
        padding: EdgeInsets.only(left: 26.w,top: 53.h),
        child: SingleChildScrollView(
          child: Column(
            children: [
            Padding(
              padding: const EdgeInsets.only(right: 26).r,
              child: Row(
                children: [
                  Stack(
                    children: [
                    Image.asset(AppImagesManager.cloudIcon,
                        color: ColorManager.iconColor),
                    Positioned(
                      bottom: 10.r,
                      left: 15.r,
                      child: Image.asset(AppImagesManager.sunbagIcon,
                          color: ColorManager.greenTextColor),
                    ),
                    Positioned(
                      top: 10.r,
                      left: 2.r,
                      child: Image.asset(AppImagesManager.cloudebasicIcon,
                          color: Colors.black),
                    ),
                  ]),

                  Text('36', style: AppTextStyleManager.degreeBartext),
                  Text(
                    '°c',
                    style: GoogleFonts.ubuntu(
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w500,
                        color: ColorManager.iconColor,
                        fontSize: 13.76.sp),
                  ),
                  SizedBox(width: 4.w),
                  Column(
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            AppImagesManager.clockIcon,
                            color: ColorManager.clockiconColor,
                            height: 8.h,
                            width: 11.w,
                          ),
                          SizedBox(
                            width: 3.w,
                          ),
                          Text('06:15 AM',
                              style: AppTextStyleManager.timeBartext),
                          SizedBox(
                            width: 4.w,
                          ),
                          Image.asset(
                            AppImagesManager.clockIcon,
                            color: ColorManager.clockiconColor,
                            height: 8.h,
                            width: 11.w,
                          ),
                          SizedBox(
                            width: 4.w,
                          ),
                          Text('05:11 PM',
                              style: AppTextStyleManager.timeBartext),
                        ],
                      ),
                      Row(
                        children: [
                          Text('Lucknow',
                              style: AppTextStyleManager.lineundertimeBartext),
                          Text(', Uttar Pradesh',
                              style: AppTextStyleManager.lineundertimeBartext)
                        ],
                      )
                    ],
                  ),
                  SizedBox(width: 47.w,) ,
                  Image.asset(AppImagesManager.rankingIcon,

                   height: 23.5.h, width: 23.5.w
                  ),
                  SizedBox(width: 18.w,) ,
                  Image.asset(AppImagesManager.nategaIcon,
                  height: 23.5.h, width: 23.5.w
                  ),
                  SizedBox(width: 18.w,) ,
                  Image.asset(AppImagesManager.chartIcon,
                  height: 23.5.h, width: 23.5.w
                  )
                  
                
                ],
              ),
            ),
            SizedBox(
              height: 22.h,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TimeAndDateModel(),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return HomePageTwo();
                          },
                        ));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10).r,
                        child: ProfileScreen(),
                      )),
                  SizedBox(
                    width: 10.w,
                  ),
                  ProfileScreen(),
                ],
              ),
            ),
            TodatTaskRowModelScreen(
              _listGenderEmpty,
              label,
              Text(
                '+',
                style: GoogleFonts.ubuntuCondensed(
                    fontStyle: FontStyle.normal,
                    color: ColorManager.greenTextColor,
                    fontWeight: FontWeight.w700,
                    fontSize: 12.sp),
              ),
            ),
            Container(
              height: 455.63.h,
              child: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                        padding: EdgeInsets.all(0.0),
                        shrinkWrap: true,
                        itemCount: tasksContent.length,
                        itemBuilder: ((context, index) {
                          return TODoCard(
                            text: 'TODAY\'s TASK',
                            taskContent: tasksContent[index],
                            number: index + 1,
                          );
                        })),
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
