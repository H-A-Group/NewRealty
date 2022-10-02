import 'package:flutter/material.dart';
import 'package:real_estate/core/utils/app_colors.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        leading:  CircleAvatar(
          backgroundColor: AppColors.normalGrey,
          radius: 10.0,
        
        
        ),

      ), 
    );
  }
}