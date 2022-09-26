import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:real_estate/core/utils/app_strings.dart';
import 'package:real_estate/presentation/screens/on_boarding_screen.dart';
import 'package:real_estate/presentation/screens/splash_screen.dart';
import 'package:real_estate/presentation/screens/startup.dart';

class Routes {
  static const String initialRout = '/';
  static const String onBoardingRout = '/onBoarding';
  static const String sinInRout = '/signIn';
}

class AppRoutes {
  static Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.initialRout:
        return CupertinoPageRoute(builder: (context) {
          return const SplashScreen();
        });
      case Routes.onBoardingRout:
        return CupertinoPageRoute(builder: (context) {
          return const OnBoardingScreen();
        });
      case Routes.sinInRout:
        return CupertinoPageRoute(builder: (context) {
          return const StartUp();
        });
      default:
        return undefinedRoute();
    }
  }

  static Route<dynamic> undefinedRoute() {
    return CupertinoPageRoute(
      builder: (context) => const Scaffold(
        body: Center(
          child: Text(AppStrings.noRouteFound),
        ),
      ),
    );
  }
}
