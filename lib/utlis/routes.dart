import 'package:flutter/material.dart';
import 'package:figma_task/screens/challenge_digital_joined/challenge_digital_joined_screen.dart';
import 'package:figma_task/screens/digital_clock_screen/digital_clock_screen.dart';
import 'package:figma_task/screens/navigation_bar/navigation_bar_screen.dart';
import 'package:figma_task/screens/pomodoro_screen.dart';
import 'package:figma_task/screens/tasks_screen.dart';


const PageTwo = "/PageTwo";

const navigationRoute = "/";


class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
     
      case navigationRoute:
        return MaterialPageRoute(builder: (_) => NavigationScreen());
      case PageTwo:
        return MaterialPageRoute(builder: (_) => HomePageTwo());
         case PageTwo:
        return MaterialPageRoute(builder: (_) => TasksScreen());
         case PageTwo:
        return MaterialPageRoute(builder: (_) => PomodoroScreen());

      default:
        return MaterialPageRoute(builder: (_) {
          return const Scaffold(
            body: Center(
              child: Text("no screens for that root"),
            ),
          );
        });
    }
  }
}
