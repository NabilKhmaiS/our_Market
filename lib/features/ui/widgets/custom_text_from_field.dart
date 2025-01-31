import 'package:flutter/material.dart';
import 'package:our_market/cor/app_colors.dart';

class CustomTextFromField extends StatelessWidget {
  const CustomTextFromField({super.key, required this.labelText, this.suffIcvon,  this.secure = false, this.keyboardType,  this.controller});

  @override
  final String  labelText;
  final Widget? suffIcvon;
  final TextInputType? keyboardType;
  final bool secure;
  final TextEditingController? controller;

  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: secure,
     // obscuringCharacter: "*",
      validator: (value){
        if (value== null || value.isEmpty){
          return 'this failed is empty';
        }
        return null;
      },
      keyboardType: keyboardType,
      decoration: InputDecoration(
        labelText: labelText,
        suffixIcon: suffIcvon,

        border: OutlineInputBorder(
          borderSide:const  BorderSide(color: AppColors.kBordersideColor,width: 2),
          borderRadius: BorderRadius.circular(8),

        ),
        enabledBorder: OutlineInputBorder(
            borderSide:const  BorderSide(color: AppColors.kBordersideColor,width: 2),
            borderRadius: BorderRadius.circular(8)
        ),
        focusedBorder: OutlineInputBorder(
            borderSide:const  BorderSide(color: AppColors.kBordersideColor,width: 2),
            borderRadius: BorderRadius.circular(8)
        ),
      ),

    );
  }
}
