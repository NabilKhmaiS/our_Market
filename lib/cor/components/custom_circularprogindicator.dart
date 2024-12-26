import 'package:flutter/material.dart';
import 'package:our_market/cor/app_colors.dart';

class CustomCircularprogindicator extends StatelessWidget {
  const CustomCircularprogindicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: CircularProgressIndicator(
        color: AppColors.kPrimaryColor,
    )
    );
  }
}
