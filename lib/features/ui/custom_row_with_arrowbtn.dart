import 'package:flutter/material.dart';
import 'package:our_market/features/ui/custom_arrow_button.dart';

class CustomRowWithArrowbtn extends StatelessWidget {
  const CustomRowWithArrowbtn({super.key, required this.text, this.onTap});
final String text;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text,style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold
        ),),
        // Spacer(),
        CustomArrowButton(
          onTap: onTap,
        ),
      ],
    );
  }
}
