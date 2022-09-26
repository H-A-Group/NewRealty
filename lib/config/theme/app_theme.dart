import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:real_estate/core/utils/app_colors.dart';

import '../../core/utils/style_manager.dart';

class AppTheme {
  static ThemeData lightTheme() {
    return ThemeData(
      scaffoldBackgroundColor: AppColors.white,
      primaryColor: AppColors.primary,
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.white,
        elevation: 0.0,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: AppColors.white,
        ),
      ),
      // textTheme: TextTheme(
      //   headline1: TextStyle(
      //     fontSize: 40.0,
      //     color: AppColors.white,
      //     fontWeight: FontWeight.bold,
      //   ),
      // ),
      textTheme: TextTheme(
        headline1: getBoldStyle(color: AppColors.white, fontSize: 35),
        headline2: getSemiBoldStyle(color: AppColors.black, fontSize: 16),
        subtitle1: getMediumStyle(color: AppColors.white, fontSize: 20),
        subtitle2: getMediumStyle(color: AppColors.primary, fontSize: 30),
        caption: getRegularStyle(color: AppColors.lightGrey),
        bodyText1: getRegularStyle(color: AppColors.darkBlue, fontSize: 28),
        bodyText2: getMediumStyle(color: AppColors.white, fontSize: 10),
      ),
    );
  }
}
