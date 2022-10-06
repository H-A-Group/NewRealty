import 'package:flutter/material.dart';
import 'package:icon_broken/icon_broken.dart';
import 'package:real_estate/config/routes/app_routes.dart';
import 'package:real_estate/core/utils/app_colors.dart';
import 'package:real_estate/core/utils/media_query_values.dart';
import 'package:real_estate/presentation/widgets/form_fields.dart';
import 'package:real_estate/presentation/widgets/services_item.dart';

class ServicesScreen extends StatelessWidget {
  ServicesScreen({super.key});

  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          top: context.height * 0.04,
          left: context.width * 0.05,
          right: context.width * 0.05,
        ),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {
                  Navigator.pushReplacementNamed(context, Routes.registerRout);
                },
                child: CircleAvatar(
                  backgroundColor: AppColors.lightGrey,
                  child: Icon(
                    IconBroken.Arrow___Left_2,
                    color: AppColors.primary,
                  ),
                ),
              ),
              SizedBox(
                height: context.height * 0.06,
              ),
              Row(
                children: [
                  Text(
                    "FAQ",
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: AppColors.primary,
                        ),
                  ),
                  Text(
                    " & ",
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontWeight: FontWeight.normal,
                          fontSize: 30,
                          color: AppColors.primary,
                        ),
                  ),
                  Text(
                    "Support",
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: AppColors.primary),
                  ),
                ],
              ),
              SizedBox(
                height: context.height * 0.04,
              ),
              Text(
                "Find answer to your problem using this app",
                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      color: AppColors.grey,
                      fontSize: 15,
                    ),
              ),
              SizedBox(
                height: context.height * 0.03,
              ),
              buildServicesItem(context),
              SizedBox(
                height: context.height * 0.03,
              ),
              defaultFormField(
                controller: searchController,
                type: TextInputType.text,
                validate: () {},
                hint: "Try find 'how to' ",
                prefix: IconBroken.Search,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
