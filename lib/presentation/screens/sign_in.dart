import 'package:flutter/material.dart';
import 'package:real_estate/core/utils/app_colors.dart';
import 'package:real_estate/core/utils/media_query_values.dart';
import 'package:real_estate/presentation/widgets/start_button.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
            right: context.height * 0.03, left: context.height * 0.03),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                children: [
                  Container(
                      clipBehavior: Clip.hardEdge,
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Image.asset("assets/images/login1.png")),
                  Container(
                      clipBehavior: Clip.hardEdge,
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30)),
                      child: Image.asset("assets/images/login2.png")),
                  Container(
                      clipBehavior: Clip.hardEdge,
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30)),
                      child: Image.asset("assets/images/login3.png")),
                  Container(
                      clipBehavior: Clip.hardEdge,
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30)),
                      child: Image.asset(
                        "assets/images/splash_image.png",
                        fit: BoxFit.cover,
                      )),
                ],
              ),
            ),
            Row(
              children: [
                Text(
                  "Ready to ",
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(color: AppColors.darkBlue, fontSize: 25),
                ),
                Text(
                  "explore?",
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: AppColors.darkBlue,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                ),
              ],
            ),
            SizedBox(height: context.height * 0.05),
            StartButton(
              text: "Continue with Email",
              width: context.width * 0.8,
              height: context.height * 0.09,
              onTap: () {},
              icon: Icons.email,
            ),
            SizedBox(height: context.height * 0.05),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: context.height * 0.00300,
                  width: context.width * 0.4,
                  color: AppColors.grey,
                ),
                SizedBox(
                  width: context.width * 0.02,
                ),
                Text(
                  "OR",
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: AppColors.grey,
                        fontSize: 15,
                      ),
                ),
                SizedBox(
                  width: context.width * 0.02,
                ),
                Container(
                  height: context.height * 0.00300,
                  width: context.width * 0.4,
                  color: AppColors.grey,
                )
              ],
            ),
            SizedBox(height: context.height * 0.05),
          ],
        ),
      ),
    );
  }
}
