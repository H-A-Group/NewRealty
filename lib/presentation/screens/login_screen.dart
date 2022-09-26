import 'package:flutter/material.dart';
import 'package:real_estate/core/utils/app_colors.dart';
import 'package:real_estate/core/utils/media_query_values.dart';
import 'package:real_estate/presentation/widgets/formfilds.dart';
import 'package:real_estate/presentation/widgets/main_button.dart';
import 'package:real_estate/presentation/widgets/signin_buttons.dart';


// ignore: must_be_immutable
class LoginScreen extends StatelessWidget {

TextEditingController emailController =  TextEditingController();
TextEditingController passwordController =  TextEditingController();


  LoginScreen({super.key}); 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            body: Padding(
              padding:  EdgeInsets.only(
                top: context.height*0.05,
                left: context.width*0.02,
                right: context.width*0.02,
                bottom: context.height*0.02,
              ),
              child: Expanded(
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column( crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset("assets/images/login_head.png"),
                      SizedBox(height: context.height*0.04,),
                      Row(
                        children: [
                          Text("let's",style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: AppColors.darkBlue,
                            fontSize: 25,
                            fontWeight: FontWeight.normal
                              
                          ),),
                           Text(" Sign ln",style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: AppColors.darkBlue,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            
                          ),
                          
                          )
                        ],
                      ),
                       SizedBox(height: context.height*0.05,),
                              
                       Text("Welcom Back . Explore What You Missed",style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: AppColors.darkBlue,
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                
                              
                       ),),
                       SizedBox(height: context.height*0.05,),
                       defaultFormField(
                        controller: emailController, 
                       type: TextInputType.emailAddress,
                        validate: (){},
                         hint: "Email",
                        prefix: Icons.email_outlined
                         ),
                         SizedBox(height: context.height*0.02,),
                         defaultFormField(
                        controller: passwordController, 
                       type: TextInputType.visiblePassword,
                       isPassword: true,
                        validate: (){},
                         hint: "Password",
                        prefix: Icons.lock_outlined
                         ),
                          SizedBox(height: context.height*0.01,),
                          Row(
                            children: [
                            TextButton(onPressed: (){}, child: Text("Forget password?",style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: AppColors.darkBlue,
                              fontSize: 15,
                            ),)),
                           const Spacer(),
                           TextButton(onPressed: (){}, child: Text("Show password",style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: AppColors.darkBlue,
                              fontSize: 15,
                            ),)),
                           
                
                            ],
                          ),SizedBox(height: context.height*0.01),
                          Center(
                            child: MainButton(text: "Login", 
                            width: context.width*0.8,
                             height: context.height*0.09,
                              onTap: (){}),
                          ),
                            SizedBox(height: context.height*0.01),
                            buildSigninButtons(context),
                      
                    ],
                  ),
                ),
              ),
            ),
    );
  }
}