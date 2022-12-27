import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:figma_task/resourses/app_colors.dart';
import 'package:figma_task/resourses/app_images.dart';
import 'package:figma_task/resourses/app_string.dart';
import 'package:figma_task/screens/challenge_screen.dart';
import 'package:figma_task/screens/digital_clock_screen/digital_clock_screen.dart';
import 'package:figma_task/screens/home_screen.dart';
import 'package:figma_task/screens/pomodoro_screen.dart';
import 'package:figma_task/screens/tasks_screen.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  static const List _pages = [
    HomeScreen(),
    ChallengeScreen(),
    PomodoroScreen(),
    TasksScreen()
  ];
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: ColorManager.primaryColor,
        unselectedIconTheme: IconThemeData(
          color: ColorManager.whiteTextColor,
        ),
       
        selectedFontSize: 20,
       
        selectedItemColor: ColorManager.whiteTextColor,
        unselectedItemColor: ColorManager.whiteTextColor,
        selectedLabelStyle: GoogleFonts.ubuntuCondensed(
          fontSize: 10.sp,
          fontWeight: FontWeight.w400,
          color: ColorManager.whiteTextColor,
        ),
        currentIndex: _selectedIndex,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            
            icon:ImageIcon(
               AssetImage(AppImagesManager.HomeIcon),
                
               ),
            label: AppStringManager.Home,
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
               AssetImage(AppImagesManager.MedalIcon),
              
               ),
            label: AppStringManager.challenge,
          ),
          BottomNavigationBarItem(
            icon:ImageIcon(
               AssetImage(AppImagesManager.groupedIcon),
                  
               ),
            label: AppStringManager.POMODORO,
          ),
          BottomNavigationBarItem(
            icon:ImageIcon(
               AssetImage(AppImagesManager.taskIcon),
                
               ), 
            label: AppStringManager.Tasks,
          ),
        ],
      ),
      body: Center(
        child: _pages.elementAt(_selectedIndex), //New
      ),
    ));
  }
}
