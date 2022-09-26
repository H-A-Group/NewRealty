import 'package:flutter/material.dart';
import 'package:real_estate/config/routes/app_routes.dart';
import 'package:real_estate/config/theme/app_theme.dart';
import 'package:real_estate/core/utils/app_strings.dart';

class RealEstateApp extends StatelessWidget {
  const RealEstateApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppStrings.appName,
      theme: AppTheme.lightTheme(),
      onGenerateRoute: AppRoutes.onGenerateRoute,
    );
  }
}
