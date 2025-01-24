
import 'package:flutter/material.dart';
import 'package:our_market/cor/app_colors.dart';

 ScaffoldFeatureController<SnackBar,SnackBarClosedReason>showSnackBar(BuildContext context, String text){
   return  ScaffoldMessenger.of(context).showSnackBar(
       SnackBar(content: Text(text),
         backgroundColor: AppColors.kPrimaryColor,
       ));
 }
