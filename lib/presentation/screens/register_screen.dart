import 'package:flutter/material.dart';
import 'package:icon_broken/icon_broken.dart';
import 'package:real_estate/config/routes/app_routes.dart';
import 'package:real_estate/core/utils/app_colors.dart';
import 'package:real_estate/core/utils/media_query_values.dart';
import 'package:real_estate/presentation/widgets/formfilds.dart';
import 'package:real_estate/presentation/widgets/main_button.dart';

class SignupScreen extends StatelessWidget {

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      
        body: Padding(
          padding:  EdgeInsets.only(
            top: context.height*0.04,
            left: context.width*0.05,
            right:  context.width*0.05,
          ),
          child: Column( crossAxisAlignment: CrossAxisAlignment.start,
             children: [
              InkWell( onTap: (){
                Navigator.pushReplacementNamed(context, Routes.logInRout);
              },
                child: CircleAvatar( 
                  backgroundColor:  AppColors.lightGrey,
                  child: Icon(IconBroken.Arrow___Left_2,
                   color: AppColors.primary,
                  ),
                ),
              ),

              SizedBox(height: context.height*0.06,),

             Row(
               children: [
                 Text("Creat your ",style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontWeight: FontWeight.normal,
                  fontSize: 30,
                   color: AppColors.primary

                 ),),
                Text("account ",style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: AppColors.primary
                 ),),
               ],
             ),

              SizedBox(height: context.height*0.02,),

             Text("To get what you want at the best price",style: Theme.of(context).textTheme.bodySmall!.copyWith(
              color: AppColors.normalGrey
             ),),
            SizedBox(height: context.height*0.04,),
            defaultFormField(
              controller: nameController,
             type: TextInputType.name,
              validate: (){},
              prefix: IconBroken.User,
               hint:"Full Name"),

               SizedBox(height: context.height*0.03,),

               defaultFormField(
                controller: emailController,
             type: TextInputType.emailAddress,
              validate: (){},
              prefix: IconBroken.Message,
               hint:"Email"),

               SizedBox(height: context.height*0.03,),

               defaultFormField(
                controller: passwordController,
             type: TextInputType.emailAddress,
              validate: (){},
              prefix: IconBroken.Lock,
               hint:"Password"),

               SizedBox(height: context.height*0.03,),
               Row(
                children: [
                TextButton(onPressed: (){

                  Navigator.pushNamed(context, Routes.servicesRout);

                }, child: Text("Terms of service",style: Theme.of(context).textTheme.bodyText2!.copyWith(
                     color: AppColors.primary,
                     fontSize: 15
                  ),
                  ),
                  ),
                 const Spacer(),
                  TextButton(onPressed: (){}, child: Text("Show password",style: Theme.of(context).textTheme.bodyText2!.copyWith(
                     color: AppColors.primary,
                     fontSize: 15
                  ),
                  ),
                  ),


                ],
               ),

                 SizedBox(height: context.height*0.05,),
                
                Center(
                  child: MainButton(
                    text: "Register",
                    width: context.width * 0.8,
                    height: context.height * 0.09,
                    onTap: () {},
                  ),
                ),


             ],
          ),
        ),
        

      
    );
  }
}