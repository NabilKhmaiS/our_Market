import 'package:flutter/material.dart';
import 'package:our_market/cor/app_colors.dart';
import 'package:our_market/cor/functions/navigate.dart';
import 'package:our_market/features/ui/signup%20_views/signup_view.dart';
import 'package:our_market/features/ui/widgets/custom_appbar.dart';
import 'package:our_market/features/ui/widgets/custom_row_with_arrowbtn.dart';
import 'package:our_market/features/ui/widgets/custom_text_button.dart';
import 'package:our_market/features/ui/widgets/custom_text_from_field.dart';
import 'package:our_market/features/ui/forget_view/forget_views.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Column(
        children: [
          SizedBox(height: 20,),
          CustomAppbar(),
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
                      keyboardType: TextInputType.emailAddress,

                    ),
                    const SizedBox(height: 20,),

                    CustomTextFromField(
                      keyboardType: TextInputType.visiblePassword,
                      secure: true,
                      suffIcvon: IconButton(onPressed: (){}, icon: Icon(Icons.visibility_off)),
                      labelText: 'password',


                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        CustomTextButton(text: "forGot password?",
                          onTap: (){
                            navigateTo(context, ForgetViews());
                          },
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
                        Text('Dont Have an account?',style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                        ),),
                        SizedBox(width: 8,),
                        CustomTextButton(text: "Sign up",onTap: (){
                          navigateTo(context, SignupView());
                        })
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