import 'package:flutter/material.dart';
import 'package:our_market/cor/app_colors.dart';
import 'package:our_market/features/ui/custom_row_with_arrowbtn.dart';
import 'package:our_market/features/ui/custom_text_button.dart';
import 'package:our_market/features/ui/custom_text_from_field.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Column(
        children: [
          SizedBox(height: 20,),
          Text("Welcome  To Our Market",style: TextStyle(
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
                      labelText: 'Email',
                    ),
                    const SizedBox(height: 20,),
                    CustomTextFromField(
                      secure: true,
                      suffIcvon: IconButton(onPressed: (){}, icon: Icon(Icons.visibility_off)),
                      labelText: 'pasward',
                    ),
                    SizedBox(height: 20,),
                    Row(
                     mainAxisAlignment: MainAxisAlignment.end,
                     children: [
                       CustomTextButton(text: "forGot password?",
                       onTap: (){},
                       )
                     ],
                   ),
                    SizedBox(height: 20,),

                    CustomRowWithArrowbtn(text: "Login",onTap: (){},),

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
                        CustomTextButton(text: "Sign up",onTap: (){},)
                      ],
                    )



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
