import 'package:flutter/material.dart';
import 'package:real_estate/core/utils/media_query_values.dart';

import '../../core/utils/app_colors.dart';

class MainButton extends StatelessWidget {
  const MainButton(
      {super.key,
      required this.text,
      required this.width,
      required this.height, required this.onTap});
  final String text;
  final double width;
  final double height;
  final VoidCallback onTap;

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
          child: Text(
            text,
            style: Theme.of(context).textTheme.subtitle1,
          ),
        ),
      ),
    );
  }
}
