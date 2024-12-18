import 'package:flutter/material.dart';
import 'package:our_market/cor/app_colors.dart';

class CustomEleved extends StatelessWidget {
  const CustomEleved({super.key, this.onTap});

  @override
  final void Function()? onTap;

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
    padding: const EdgeInsets.symmetric(vertical: 10,
    ),
    child: Icon(Icons.arrow_forward),
    ));
  }
}
