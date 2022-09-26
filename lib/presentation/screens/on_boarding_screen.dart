import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'package:real_estate/core/utils/app_colors.dart';
import 'package:real_estate/core/utils/assets_manager.dart';
import 'package:real_estate/core/utils/media_query_values.dart';
import 'package:real_estate/presentation/widgets/on_boarding_item.dart';

import '../widgets/main_button.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final List<Widget> screens = [
    const OnBoardingItem(
      normalText: 'Find best place \nto stay in ',
      boldText: 'good price',
      captionText:
          'Lorem ipsum dolor sit amet, consectetur\n adipiscing elit, sed.',
      image: ImageAssets.onBoarding1,
    ),
    const OnBoardingItem(
      normalText: 'Fast sell your property \nin just',
      boldText: 'one click',
      captionText:
          'Lorem ipsum dolor sit amet, consectetur\n adipiscing elit, sed.',
      image: ImageAssets.onBoarding2,
    ),
    const OnBoardingItem(
      normalText: 'Find perfect choice for \nyour',
      boldText: 'future house',
      captionText:
          'Lorem ipsum dolor sit amet, consectetur\n adipiscing elit, sed.',
      image: ImageAssets.onBoarding3,
    ),
  ];
  bool isSecond = false;
  bool isLast = false;
  final PageController _pageController = PageController();
  _customAppBar() {
    return PreferredSize(
      preferredSize: Size(double.infinity, context.height * 0.12),
      child: SafeArea(
        child: Row(
          children: [
            Image.asset(
              ImageAssets.logo_1x,
              fit: BoxFit.cover,
              width: context.width * 0.3,
            ),
            const Spacer(),
            InkWell(
              onTap: () {},
              child: Container(
                width: context.width * 0.2,
                height: context.height * 0.04,
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                margin: const EdgeInsets.only(right: 15.0),
                decoration: BoxDecoration(
                  color: AppColors.grey,
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Center(
                  child: Text(
                    'skip',
                    style: Theme.of(context).textTheme.caption,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _customAppBar(),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          PageView(
            controller: _pageController,
            children: screens,
            onPageChanged: (int index) {
              if (index > 0 && index == screens.length - 1) {
                setState(() {
                  isSecond = true;
                  isLast = true;
                });
              } else if (index > 0) {
                setState(() {
                  isSecond = true;
                  isLast = false;
                });
              } else {
                setState(() {
                  isSecond = false;
                  isLast = false;
                });
              } 
            },
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SmoothPageIndicator(
                controller: _pageController,
                count: screens.length,
                effect: WormEffect(
                  activeDotColor: AppColors.white,
                  paintStyle: PaintingStyle.stroke,
                ),
                onDotClicked: (int index) {
                  _pageController.jumpToPage(index);
                },
              ),
              const SizedBox(
                height: 10.0,
              ),
              MainButton(
                text: 'Next',
                width: context.width * 0.5,
                height: context.height * 0.07,
                onTap: () {
                  if (isLast) {
                  } else {
                    _pageController.nextPage(
                      duration: const Duration(milliseconds: 700),
                      curve: Curves.fastLinearToSlowEaseIn,
                    );
                  }
                },
              ),
              SizedBox(
                height: context.height * 0.03,
              ),
            ],
          ),
          if (isSecond)
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: 10.0, vertical: context.height * 0.08),
                child: IconButton(
                  onPressed: () {
                    _pageController.previousPage(
                      duration: const Duration(milliseconds: 700),
                      curve: Curves.fastLinearToSlowEaseIn,
                    );
                  },
                  icon: Icon(
                    Icons.arrow_circle_left,
                    size: 70.0,
                    color: AppColors.white,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
