import 'package:flutter/material.dart';
import 'package:our_market/cor/app_colors.dart';

class CustomRowBtn extends StatelessWidget {
  const CustomRowBtn({
    super.key, this.onTap, required this.icon, required this.label,
  });
  @override
  final void Function()? onTap;
  final IconData icon;
  final String label;

  Widget build(BuildContext context) {
    return Card(
      color: AppColors.kPrimaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.person,color: AppColors.kWhiteColor,),
              Text(label,style: TextStyle(color: AppColors.kWhiteColor,fontWeight: FontWeight.bold),),
              Icon(icon,color: AppColors.kWhiteColor)

            ],
          ),
        ),
      ),
    );
  }
}