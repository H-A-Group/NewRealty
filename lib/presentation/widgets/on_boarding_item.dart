import 'package:flutter/material.dart';
import 'package:real_estate/core/utils/media_query_values.dart';

class OnBoardingItem extends StatelessWidget {
  const OnBoardingItem(
      {super.key,
      required this.normalText,
      required this.boldText,
      required this.captionText,
      required this.image});
  final String normalText;
  final String boldText;
  final String captionText;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text.rich(
                TextSpan(
                  text: normalText,
                  style: Theme.of(context).textTheme.bodyText1,
                  children: [
                    TextSpan(
                      text: boldText,
                      style: Theme.of(context).textTheme.subtitle2,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: context.height * 0.04,
              ),
              Text(
                captionText,
                style: Theme.of(context).textTheme.caption!.copyWith(
                      fontSize: 15,
                    ),
              ),
            ],
          ),
        ),
        const Spacer(),
        Container(
          width: context.width,
          height: context.height * 0.6,
          margin: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(35.0),
            image: DecorationImage(
              image: AssetImage(
                image,
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
