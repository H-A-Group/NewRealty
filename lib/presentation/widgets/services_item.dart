import 'package:flutter/material.dart';
import 'package:icon_broken/icon_broken.dart';
import 'package:real_estate/core/utils/app_colors.dart';
import 'package:real_estate/core/utils/media_query_values.dart';



Widget buildServicesItem(BuildContext context)=> Column(
  children: [
    Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: AppColors.darkBlue,
                        child: const Icon(IconBroken.Bookmark),
                      ),
                      
                      Text("  Visit our web site",style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        color: AppColors.primary,
                        fontSize: 20
                      ),
                      ),
                    ],
                  ),
                  SizedBox(height: context.height*0.02,),
                  Center(
                    child: Container(
                      color: AppColors.grey,
                      height: 1,
                      width: context.width*0.8 ,
                    ),
                  ),
                   SizedBox(height: context.height*0.02,),
                    Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: AppColors.darkBlue,
                        child: const Icon(IconBroken.Message),
                      ),
                      
                      Text("  Email us",style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        color: AppColors.primary,
                        fontSize: 20
                      ),
                      ),
                    ],
                  ),
                  SizedBox(height: context.height*0.02,),
                  Center(
                    child: Container(
                      color: AppColors.grey,
                      height: 1,
                      width: context.width*0.8 ,
                    ),
                  ),
                   SizedBox(height: context.height*0.02,),
                    Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: AppColors.darkBlue,
                        child: const Icon(IconBroken.Paper),
                      ),
                      
                      Text("  Terms of services",style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        color: AppColors.primary,
                        fontSize: 20
                      ),
                      ),
                    ],
                  ),
                  SizedBox(height: context.height*0.02,),
                  Center(
                    child: Container(
                      color: AppColors.grey,
                      height: 1,
                      width: context.width*0.8 ,
                    ),
                  ),
                   SizedBox(height: context.height*0.02,),
                   //


  ],
);