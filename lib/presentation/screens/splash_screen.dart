import 'package:flutter/material.dart';
import 'package:real_estate/config/routes/app_routes.dart';
import 'package:real_estate/core/utils/app_colors.dart';
import 'package:real_estate/core/utils/assets_manager.dart';
import 'package:real_estate/core/utils/media_query_values.dart';
import 'package:real_estate/presentation/widgets/main_button.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Image.asset(
            ImageAssets.splashImage,
            fit: BoxFit.cover,
            height: context.height,
            width: double.infinity,
          ),
          Container(
            width: double.infinity,
            height: context.height,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  AppColors.lightPrimary.withOpacity(0.5),
                  AppColors.primary.withOpacity(0.6),
                  AppColors.primary.withOpacity(0.9),
                  AppColors.primary,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    ImageAssets.logo_2x,
                    fit: BoxFit.cover,
                    width: 300.0,
                    height: 150.0,
                  ),
                  Text(
                    'Fucking \nReal Estate',
                    style: Theme.of(context).textTheme.headline1,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: context.height * 0.03),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                MainButton(
                  text: 'let\'s start',
                  width: context.width * 0.5,
                  height: context.height * 0.07,
                  onTap: () {
                    // debugPrint('test');
                    Navigator.pushReplacementNamed(
                        context, Routes.onBoardingRout);
                  },
                ),
                Text.rich(
                  TextSpan(
                    text: 'By\n RunTime Terror Team \n',
                    style: Theme.of(context).textTheme.bodyText2!.copyWith(
                          fontWeight: FontWeight.normal,
                        ),
                    children: [
                      TextSpan(
                        text: 'v.1.0',
                        style: Theme.of(context).textTheme.bodyText2!.copyWith(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
