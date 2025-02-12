import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:our_market/cor/app_colors.dart';
import 'package:our_market/cor/components/custom_circularprogindicator.dart';
import 'package:our_market/cor/components/showSnackBar.dart';
import 'package:our_market/features/logic/cubit/authentication_cubit.dart';
import 'package:our_market/features/ui/widgets/custom_text_from_field.dart';
import 'package:our_market/features/ui/forget_view/custom_Elevated_Btn.dart';

class ForgetViews  extends StatefulWidget {
  const ForgetViews ({super.key});

  @override
  State<ForgetViews> createState() => _ForgetViewsState();
}

class _ForgetViewsState extends State<ForgetViews> {
   final GlobalKey<FormState> formKey = GlobalKey<FormState>();
   final TextEditingController emailController= TextEditingController();


   @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthenticationCubit, AuthenticationState>(
        listener: (context, state) {
      if (state is PasswordResetSuccess) {
        Navigator.pop(context);
        showSnackBar(context,"email was sent");

      }
    },
    builder: (context, state) {

    return Scaffold(
      body: state is PasswordResetLoading ? CustomCircularprogindicator(): SafeArea(
        child: Form(
          key: formKey,
          child: Column(
          children: [
          const SizedBox(height: 20,),
              const Padding(
                padding:  EdgeInsets.all(8.0),
                child: Text("Enter your Email To Reset password",style: TextStyle(

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
               CustomTextFromField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
              labelText: 'Email',
              ),
              const SizedBox(height: 20,),

                CustomElevatedBtn(text: "Sumbit",onTap: (){
                  if(formKey.currentState!.validate()) {
                    context.read<AuthenticationCubit>().resetPassword(email: emailController.text);
                  }

                },)
          ],
                )),
              ),
              )
                ]),
        ),

    )
    );
  }
    );
}
@override
  void dispose() {
     emailController.dispose();
    super.dispose();
  }
}
