import 'package:flutter/material.dart';
import 'package:our_market/cor/app_colors.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [ Text("Welcome",style: TextStyle(

        fontSize: 24,
        color: AppColors.kPrimaryColor,
        fontWeight: FontWeight.bold,
      ),),


        Text(" To OurS Marke",style: TextStyle(

          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),),
        Text("t",style: TextStyle(

          fontSize: 24,
          color: AppColors.kPrimaryColor,
          fontWeight: FontWeight.bold,
        ),),
      ],
    );
  }
}
