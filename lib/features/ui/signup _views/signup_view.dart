import 'package:flutter/material.dart';
import 'package:our_market/cor/app_colors.dart';
import 'package:our_market/features/ui/widgets/custom_row_with_arrowbtn.dart';
import 'package:our_market/features/ui/widgets/custom_text_button.dart';
import 'package:our_market/features/ui/widgets/custom_text_from_field.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Column(
        children: [
          SizedBox(height: 20,),
          Text("Welcome  To OurS Market",style: TextStyle(

            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),),
          SizedBox(height: 24,),
          Card(
            margin: EdgeInsets.all(24),
            color: AppColors.kWhiteColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    CustomTextFromField(
                      keyboardType: TextInputType.name,
                      labelText: 'name',
                    ),
                    const SizedBox(height: 20,),
                    CustomTextFromField(
                      keyboardType: TextInputType.emailAddress,
                      labelText: 'Email',
                    ),
                    const SizedBox(height: 20,),

                    CustomTextFromField(
                      keyboardType: TextInputType.visiblePassword,
                      secure: true,
                      suffIcvon: IconButton(onPressed: (){}, icon: Icon(Icons.visibility_off)),
                      labelText: 'password',


                    ),
                    SizedBox(height: 20,),


                    CustomRowWithArrowbtn(text: "Sign up",onTap: (){},),

                    SizedBox(height: 20),

                    CustomRowWithArrowbtn(text: "Login with Google",onTap: (){},),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Already Have an account?',style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                        ),),
                        SizedBox(width: 8,),
                        CustomTextButton(text: "Login",onTap: (){
                          Navigator.pop(context);
                        },)
                      ],
                    ),




                  ],
                ),
              ),
            ),

          ),
        ],
      )) ,
    );
  }
}
