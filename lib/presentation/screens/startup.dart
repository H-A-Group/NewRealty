import 'package:flutter/material.dart';
import 'package:real_estate/config/routes/app_routes.dart';
import 'package:real_estate/core/utils/app_colors.dart';
import 'package:real_estate/core/utils/media_query_values.dart';
import 'package:real_estate/presentation/widgets/signin_buttons.dart';
import 'package:real_estate/presentation/widgets/start_button.dart';


class StartUp extends StatelessWidget {
  const StartUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
            right: context.height * 0.03, left: context.height * 0.03),
        child: Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: GridView.count(
                  shrinkWrap: false,
                  crossAxisCount: 2,
                  mainAxisSpacing: context.width * 0.02,
                  crossAxisSpacing: context.height * 0.02,
                  children: [
                    Container(
                        clipBehavior: Clip.hardEdge,
                        width: context.width * 0.5,
                        height: context.height * 0.5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Image.asset("assets/images/login1.png")),
                    Container(
                        clipBehavior: Clip.hardEdge,
                        width: context.width * 0.5,
                        height: context.height * 0.5,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30)),
                        child: Image.asset("assets/images/login2.png")),
                    Container(
                        clipBehavior: Clip.hardEdge,
                        width: context.width * 0.5,
                        height: context.height * 0.5,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30)),
                        child: Image.asset("assets/images/login3.png")),
                    Container(
                        clipBehavior: Clip.hardEdge,
                        width: context.width * 0.5,
                        height: context.height * 0.5,
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
              SizedBox(height: context.height * 0.03),
              StartButton(
                text: "Continue with Email",
                width: context.width * 0.8,
                height: context.height * 0.09,
                onTap: () {
                  Navigator.pushNamed(context,Routes.logInRout);
                },
                icon: Icons.email_outlined,
              ),
              SizedBox(height: context.height * 0.01),
              buildSigninButtons(context),
              SizedBox(
                height: context.height * 0.001,
              )
            ],
          ),
        ),
      ),
    );
  }
}
