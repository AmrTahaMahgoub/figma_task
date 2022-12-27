import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:figma_task/resourses/app_colors.dart';
import 'package:figma_task/screens/digital_clock_screen/digital_clock_screen.dart';
import 'package:figma_task/utlis/routes.dart';

import 'screens/navigation_bar/navigation_bar_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: ColorManager.primaryColor,
    ),
  );

  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MyApp(), // Wrap your app
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
         minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp(
           useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
        debugShowCheckedModeBanner: false,
     
        onGenerateRoute: AppRouter.generateRoute,
      ),
    );
  }
}
