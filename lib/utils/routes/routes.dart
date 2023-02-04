import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_design/utils/routes/routes_name.dart';
import 'package:ui_design/view/view_secreen/courses_secreen.dart';
import 'package:ui_design/view/view_secreen/home_secreen.dart';
import 'package:ui_design/view/view_secreen/splash_secreen.dart';

class Routes {
  static Route<dynamic> genrateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.splash:
        return MaterialPageRoute(
            builder: (BuildContext context) => SplashSecreen());
      case RoutesName.home:
        return MaterialPageRoute(
            builder: (BuildContext context) => HomeSecreen());
      case RoutesName.courses:
        return MaterialPageRoute(
            builder: (BuildContext context) => CoursesSecreen(
                  img: settings.arguments as Map,
                ));
      default:
        return MaterialPageRoute(
          builder: (_) {
            return const Scaffold(
              body: Center(
                child: Text('No route Defined'),
              ),
            );
          },
        );
    }
  }
}


// case RouteName.ScreenThird:
//         return MaterialPageRoute(
//             builder: (context) => ScreenThree(data: settings.arguments as Map));
