import 'package:flutter/material.dart';
import 'package:our_market/cor/app_colors.dart';
import 'package:our_market/features/ui/widgets/custom_text_from_field.dart';
import 'package:our_market/features/ui/forget_view/custom_Elevated_Btn.dart';

class ForgetViews  extends StatelessWidget {
  const ForgetViews ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(child: Column(
        children: [
        const SizedBox(height: 20,),
    const Padding(
      padding:  EdgeInsets.all(8.0),
      child: Text("Enter your Email  To Reset password",style: TextStyle(

      fontSize: 24,
      fontWeight: FontWeight.bold,
      ),),
    ),
    const SizedBox(height: 24,),
    Card(
    margin: const EdgeInsets.all(24),
    color: AppColors.kWhiteColor,
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(16),
    ),
    child: Padding(
    padding: const EdgeInsets.all(8.0),
    child: SingleChildScrollView(
    child: Column(
    children: [
    const CustomTextFromField(
      keyboardType: TextInputType.emailAddress,
    labelText: 'Email',
    ),
    const SizedBox(height: 20,),

      CustomElevatedBtn(text: "Sumbit",onTap: (){},)
        ],
      )),
    ),
    )
      ]),

    )
    );
  }
}
