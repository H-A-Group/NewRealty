import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:real_estate/core/utils/app_strings.dart';
import 'package:real_estate/presentation/screens/login_screen.dart';
import 'package:real_estate/presentation/screens/on_boarding_screen.dart';
import 'package:real_estate/presentation/screens/register_screen.dart';
import 'package:real_estate/presentation/screens/services_screen.dart';
import 'package:real_estate/presentation/screens/splash_screen.dart';
import 'package:real_estate/presentation/screens/startup.dart';

class Routes {
  static const String initialRout = '/';
  static const String onBoardingRout = '/onBoarding';
  static const String logInRout = '/logIn';
  static const String startupRout = '/startup';
  static const String registerRout = '/register';
  static const String servicesRout = '/service';
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
      case Routes.startupRout:
        return CupertinoPageRoute(builder: (context) {
          return const StartUp();
        });
      case Routes.logInRout:
        return CupertinoPageRoute(builder: (context) {
          return LoginScreen();
        });

      case Routes.registerRout:
        return CupertinoPageRoute(builder: (context) {
          return SignUpScreen();
        });

      case Routes.servicesRout:
        return CupertinoPageRoute(builder: (context) {
          return ServicesScreen();
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
