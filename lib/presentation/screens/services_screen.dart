import 'package:flutter/material.dart';
import 'package:icon_broken/icon_broken.dart';
import 'package:real_estate/config/routes/app_routes.dart';
import 'package:real_estate/core/utils/app_colors.dart';
import 'package:real_estate/core/utils/media_query_values.dart';
import 'package:real_estate/presentation/widgets/formfilds.dart';
import 'package:real_estate/presentation/widgets/services_item.dart';
import 'package:real_estate/core/utils/app_strings.dart';




class ServiseScreen extends StatefulWidget {
   ServiseScreen({super.key});

  @override
  State<ServiseScreen> createState() => _ServiseScreenState();
}

class _ServiseScreenState extends State<ServiseScreen> {
  TextEditingController searchController = TextEditingController();

  bool isWhite = true ; 
  Color swichColor1 = AppColors.lightGrey; 
  Color swichColor2 = AppColors.white; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Padding(
        padding:  EdgeInsets.only(
          top: context.height*0.04,
            left: context.width*0.05,
            right:  context.width*0.05,
        ),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column( crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               InkWell( onTap: (){
                    Navigator.pushReplacementNamed(context, Routes.registerRout);
                  },
                    child: CircleAvatar( 
                      backgroundColor:  AppColors.lightGrey,
                      child: Icon(IconBroken.Arrow___Left_2,
                       color: AppColors.primary,
                      ),
                    ),
                  ),
                  
                  SizedBox(height: context.height*0.03,),
                  
                  Row(
                    children: [
                        Text("FAQ",style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                     color: AppColors.primary
          
                   ),),
                     Text(" & ",style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontWeight: FontWeight.normal,
                    fontSize: 30,
                     color: AppColors.primary
          
                   ),),
                  Text("Support",style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: AppColors.primary
                   ),),
                    ],
                  ), 
          
                    SizedBox(height: context.height*0.04,),
          
                    Text( "Find answer to your problem using this app",style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      color: AppColors.grey,
                      fontSize: 15,
                    ),  
                    ),
          
                    SizedBox(height: context.height*0.03,),
          
                    buildServicesItem(context),
          
                     SizedBox(height: context.height*0.01,),
                     defaultFormField(
                      controller: searchController, 
                     type: TextInputType.text,
                      validate: (){},
                       hint: "Try find 'how to' ",
                       prefix: IconBroken.Search,
                       ), 
                       SizedBox(height: context.height*0.02,),
                       Center(
                         child: Container(
                          decoration: BoxDecoration(
                          color:AppColors.lightGrey,
                          borderRadius: BorderRadius.circular(20),
                           ),
                          width: context.width*0.89,
                          height: context.height*0.1,
                          child: Row( mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                onTap: (){
                                  setState(() {
                                    isWhite = true;
                                    
                                  });
                                },
                                child: Container(
                                  width: context.width*0.4,
                                  height: context.height*0.07,
                                  decoration: BoxDecoration(
                                     color:  isWhite ? AppColors.white : AppColors.lightGrey , 
                                     borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: Center(child: Text("Buyer",style: Theme.of(context).textTheme.bodyText2!.copyWith(
                                    color: AppColors.darkBlue,
                                    fontSize: 20,
                                  ),)),
                                ),
                              ),
                             SizedBox(width: context.width*0.04,),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    isWhite = false; 
                                   
        
                                  });
                                },
                                child: Container(
                                  width: context.width*0.4,
                                  height: context.height*0.07,
                                  decoration: BoxDecoration(
                                     color: isWhite ? AppColors.lightGrey : AppColors.white  ,
                                     borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: Center(child: Text("Esate Agent",style: Theme.of(context).textTheme.bodyText2!.copyWith(
                                    color: AppColors.darkBlue  ,
                                    fontSize: 20,
                                  ),)),
                                ),
                              ),
                            ],
                          ),
                         ),
                       ),  
                        SizedBox(height: context.height*0.01,),
                        Row(
                           children: [
                            Text("What is Rise ${AppStrings.appName} ?",style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              color: AppColors.darkBlue ,
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                            ),),
                           const Spacer(),
                           TextButton(onPressed: (){}, child: Text("+",style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              color: AppColors.green ,
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                            ),),)
                           ],
                        ),
                         SizedBox(height: context.height*0.01,),
                        Row(
                           children: [
                          Text("Why choose in ${AppStrings.appName} ?",style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              color: AppColors.darkBlue ,
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                            ),),
                           const Spacer(),
                           TextButton(onPressed: (){}, child: Text("-",style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              color: AppColors.green ,
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                            ),),)
                           ],
                        ),
                        SizedBox(height: context.height*0.01,),
                        Center(
                          child: Container( 
                                   decoration:   BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                   gradient: const LinearGradient(
                                     begin: Alignment.topCenter,
                                     end: Alignment.bottomCenter,
                                    colors: <Color> [
                                  Color.fromARGB(255, 216, 216, 216),
                                  Colors.white,
                                ],
                              ),
                            ),
                            
                            width: context.width*0.9,
                            
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Text("Programming involves tasks such as analysis, generating algorithms, profiling algorithms' accuracy and resource consumption, and the implementation of algorithms usually in a chosen programming language, commonly referred to as coding algorithms usually in a chosen programming language, commonly referred to as coding ",style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                color: AppColors.darkBlue,
                                fontSize: 20,
                              ),
                              ),
                            ),
                          ),
                        )
                    
                ],
          ),
        ),
      ),

     

    );
  }
}