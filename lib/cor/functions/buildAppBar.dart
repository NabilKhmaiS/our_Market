
import 'package:flutter/material.dart';
import 'package:our_market/cor/app_colors.dart';

AppBar buildAppBar(BuildContext context,String title) {
  return AppBar(
    backgroundColor: AppColors.kPrimaryColor,
    leading: IconButton(onPressed: () => Navigator.pop(context), icon: Icon(Icons.arrow_back,color: AppColors.kWhiteColor,)),
    centerTitle: true,
    title: Text(title,style: TextStyle(
        color: AppColors.kWhiteColor
    ),),
  );
}

