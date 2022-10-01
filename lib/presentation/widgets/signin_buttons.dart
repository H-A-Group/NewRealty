 
 import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:real_estate/core/utils/app_colors.dart';
import 'package:real_estate/core/utils/media_query_values.dart';
import 'package:real_estate/presentation/widgets/formfilds.dart';

Widget buildSigninButtons (BuildContext context)=>  Column(
  children: [
    Row( mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: context.height*0.00300,
                    width: context.width*0.3,
                    color: AppColors.grey,
                  
                  ),
                   SizedBox(width: context.width*0.02,),
                  Text("OR",style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: AppColors.grey,
                  fontSize: 15,
                 ),),
                 SizedBox(width: context.width*0.02,),
                   Container(
                    height: context.height*0.00300,
                    width: context.width*0.3,
                    color: AppColors.grey,
                  
                  )
                ],
               ),
                SizedBox(height: context.height* 0.03),
                Row( mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: (){},
                      child: Container( 
                        width: context.width*0.4,
                        height: context.width*0.2,
                        decoration: BoxDecoration(
                          color: AppColors.grey,
                          borderRadius: BorderRadius.circular(40)
                        ),
                      child: Center(child: SvgPicture.asset("assets/icons/g.svg")),
                    
                      ),
                    ),
                    SizedBox(width: context.width*0.03,),
                    InkWell( 
                      onTap: (){},
                      child: Container( 
                        width: context.width*0.4,
                        height: context.width*0.2,
                        decoration: BoxDecoration(
                          color: AppColors.grey,
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: Center(child: SvgPicture.asset("assets/icons/f.svg")),
                      ),
                    ),
                  ],
                ),
                 SizedBox(height: context.height*0.02,),
                Row( mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Dont have an account? ",style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: AppColors.darkBlue,
                    fontSize: 15
                    ),),
                    TextButton(onPressed: (){}, child: Text("Register Now",style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: AppColors.darkBlue,
                      fontWeight: FontWeight.bold,
                      fontSize: 15

                    ),)),

                    
                  ],
                ),
  ],
);