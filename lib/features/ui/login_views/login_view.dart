import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:our_market/cor/app_colors.dart';
import 'package:our_market/cor/components/custom_circularprogindicator.dart';
import 'package:our_market/cor/components/showSnackBar.dart';
import 'package:our_market/cor/functions/navigate.dart';
import 'package:our_market/features/home/main_home_view.dart';
import 'package:our_market/features/logic/cubit/authentication_cubit.dart';
import 'package:our_market/features/ui/signup%20_views/signup_view.dart';
import 'package:our_market/features/ui/widgets/custom_appbar.dart';
import 'package:our_market/features/ui/widgets/custom_row_with_arrowbtn.dart';
import 'package:our_market/features/ui/widgets/custom_text_button.dart';
import 'package:our_market/features/ui/widgets/custom_text_from_field.dart';
import 'package:our_market/features/ui/forget_view/forget_views.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final TextEditingController emailController= TextEditingController();
  final TextEditingController passwordController= TextEditingController();
  final GlobalKey<FormState>_formkey= GlobalKey<FormState>();
  bool ispasswordhidden = true;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthenticationCubit, AuthenticationState>(
      listener: (context, state) {
        if (state is LoginSuccess || state is GoogleSigneSuccess) {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => MainHomeView()));
        }

       if(state is LoginError){
         showSnackBar(context,state.message);

       }
      },
      builder: (context, state) {
        AuthenticationCubit cubit = context.read<AuthenticationCubit>();
        return Scaffold(
          appBar: AppBar(
            
          ),
          body: state is LoginSLoading ? const CustomCircularprogindicator()
              :  SafeArea(child: Column(
            children: [
              const SizedBox(height: 20,),
              const CustomAppbar(),
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
                    child: Form(
                      key: _formkey,
                      child: Column(
                        children: [
                           CustomTextFromField(
                            controller: emailController,
                            labelText: 'Email',
                            keyboardType: TextInputType.emailAddress,

                          ),
                          const SizedBox(height: 20,),

                          CustomTextFromField(
                            controller: passwordController,
                            keyboardType: TextInputType.visiblePassword,
                            secure: ispasswordhidden,
                            suffIcvon: IconButton(onPressed: () {
                              setState(() {
                                ispasswordhidden = ! ispasswordhidden;
                              });
                            },
                                icon:  Icon(ispasswordhidden?Icons.visibility: Icons.visibility_off)),
                            labelText: 'password',


                          ),
                          const SizedBox(height: 20,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              CustomTextButton(text: "forgot password?",
                                onTap: () {
                                  navigateTo(context,  ForgetViews());
                                },
                              )
                            ],
                          ),
                          const SizedBox(height: 20,),

                          CustomRowWithArrowbtn(
                            text: "Login", onTap: () {
                              if(_formkey.currentState! .validate()) {
                                cubit.login(email: emailController.text, password: passwordController.text);

                              }
                          },),

                          const SizedBox(height: 20),

                          CustomRowWithArrowbtn(
                            text: "Login with Google",
                            onTap: () => cubit.googleSignIn(),


                          ),
                          const SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'Dont Have an account?', style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold
                              ),),

                              const SizedBox(width: 8,),
                              CustomTextButton(text: "Sign up", onTap: () {
                                navigateTo(context, const SignupView());
                              })
                            ],
                          ),


                        ],
                      ),
                    ),
                  ),
                ),

              ),
            ],
          )),
        );
      },
    );
  }


  @override
void dispose ()      {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
}

}
//smh?