import 'package:flutter/material.dart';
import 'package:our_market/cor/app_colors.dart';

class CustomElevatedBtn extends StatelessWidget {
  const CustomElevatedBtn({super.key, required this.text, this.onTap});
   final String text ;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.kPrimaryColor,
            foregroundColor: AppColors.kWhiteColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16)
            )
        ),
        onPressed: onTap, child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 12,horizontal: 12
      ),
      child: Text(text),
    ));
  }
}
