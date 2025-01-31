import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:our_market/cor/app_colors.dart';
import 'package:our_market/cor/components/custom_circularprogindicator.dart';
import 'package:our_market/cor/components/showSnackBar.dart';
import 'package:our_market/features/home/main_home_view.dart';
import 'package:our_market/features/logic/cubit/authentication_cubit.dart';
import 'package:our_market/features/ui/widgets/custom_row_with_arrowbtn.dart';
import 'package:our_market/features/ui/widgets/custom_text_button.dart';
import 'package:our_market/features/ui/widgets/custom_text_from_field.dart';

class SignupView extends StatefulWidget {
  const SignupView({super.key});

  @override
  State<SignupView> createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView> {
  final GlobalKey<FormState>_formkey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthenticationCubit, AuthenticationState>(
      listener: (context, state) {
        if (state is SignupSuccess) {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => MainHomeView()));
        }

        if (state is SignupError) {
          showSnackBar(context, state.message);
        }
      },
      builder: (context, state) {

        return Scaffold(
          body: state is SignupLoading
              ? const CustomCircularprogindicator()
              : SafeArea(child: Form(
               key: _formkey,

                child: Column(
                            children: [
                const SizedBox(height: 20,),
                const Text("Welcome  To OurS Market", style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),),
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
                          CustomTextFromField(
                            controller: _nameController,
                            keyboardType: TextInputType.name,
                            labelText: 'name',
                          ),
                          const SizedBox(height: 20,),
                          CustomTextFromField(
                            controller: _emailController,
                            keyboardType: TextInputType.emailAddress,
                            labelText: 'Email',
                          ),
                          const SizedBox(height: 20,),

                          CustomTextFromField(
                            controller: _passwordController,
                            keyboardType: TextInputType.visiblePassword,
                            secure: true,
                            suffIcvon: IconButton(onPressed: () {},
                                icon: const Icon(Icons.visibility_off)),
                            labelText: 'password',

                          ),
                          const SizedBox(height: 20,),

                          CustomRowWithArrowbtn(text: "Sign up", onTap: () {
                            if (_formkey.currentState! .validate())
                            {
                              context.read<AuthenticationCubit>().register(name: _nameController.text, email: _emailController.text, password: _passwordController.text);
                            }
                          },),

                          const SizedBox(height: 20),

                          CustomRowWithArrowbtn(
                            text: "Login with Google", onTap: () {},),
                          const SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'Already Have an account?', style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold
                              ),),
                              const SizedBox(width: 8,),
                              CustomTextButton(text: "Login", onTap: () {
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
                          ),
              )),
        );
      },
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _nameController.dispose();
    super.dispose();
  }
}
