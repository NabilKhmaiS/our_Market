import 'package:flutter/material.dart';
import 'package:our_market/cor/app_colors.dart';

class CustomTextFromField extends StatelessWidget {
  const CustomTextFromField({super.key, required this.labelText, this.suffIcvon,  this.secure = false});

  @override
  final String  labelText;
  final Widget? suffIcvon;
  final bool secure;
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: secure,
     // obscuringCharacter: "*",
      validator: (value){
        if (value== null || value.isEmpty){
          return 'this failed is empty';
        }
        return null;
      },
      keyboardType: TextInputType.emailAddress,
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
