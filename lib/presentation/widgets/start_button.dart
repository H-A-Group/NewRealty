import 'package:flutter/material.dart';
import 'package:real_estate/core/utils/media_query_values.dart';
import '../../core/utils/app_colors.dart';

class StartButton extends StatelessWidget {
  const StartButton(
      {super.key,
      required this.text,
      required this.width,
      required this.icon,
      required this.height,
      required this.onTap});
  final String text;
  final double width;
  final double height;
  final VoidCallback onTap;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(bottom: context.height * 0.02),
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: AppColors.green,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: AppColors.white,
              ),
              SizedBox(
                width: context.width * 0.02,
              ),
              Text(
                text,
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
