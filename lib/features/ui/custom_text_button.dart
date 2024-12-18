import 'package:flutter/material.dart';
import 'package:our_market/cor/app_colors.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({super.key, this.onTap, required this.text});

  @override
  final void Function()? onTap;
  final String text;
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap ,
      child:  Text(text,style: TextStyle(
          color: AppColors.kPrimaryColor,
          fontSize: 18,
          fontWeight: FontWeight.bold

      ),),
    );
  }
}
