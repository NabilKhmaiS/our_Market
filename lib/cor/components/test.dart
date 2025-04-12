// import 'package:flutter/material.dart';
// import 'package:our_market/cor/app_colors.dart';
// import 'package:our_market/cor/functions/navigate.dart';
// import 'package:our_market/features/ui/login_views/login_view.dart';
// import 'package:our_market/features/ui/signup%20_views/signup_view.dart';
// import 'package:our_market/features/ui/widgets/custom_appbar.dart';
// import 'package:our_market/features/ui/widgets/custom_row_with_arrowbtn.dart';
// import 'package:our_market/features/ui/widgets/custom_text_button.dart';
// import 'package:our_market/features/ui/widgets/custom_text_from_field.dart';
// import 'package:our_market/features/ui/forget_view/forget_views.dart';
//
// class Test extends StatefulWidget {
//   const Test({super.key});
//
//   @override
//   State<Test> createState() => _LoginViewState();
// }
//
// class _LoginViewState extends State<Test> {
//   final TextEditingController name= TextEditingController();
//   final TextEditingController phone= TextEditingController();
//   final TextEditingController emailController= TextEditingController();
//
//   final TextEditingController country= TextEditingController();
//   final TextEditingController passwordController= TextEditingController();
//
//   final GlobalKey<FormState>_formkey= GlobalKey<FormState>();
//   bool ispasswordhidden = true;
//   @override
//   Widget build(BuildContext context) {
//     return  Scaffold(
//           appBar: AppBar(
//
//           ),body:
//               SafeArea(child: SingleChildScrollView(
//                 child: Column(
//                             children: [
//                 const SizedBox(height: 20,),
//                 const CustomAppbar(),
//                 const SizedBox(height: 24,),
//                 Card(
//                   margin: const EdgeInsets.all(24),
//                   color: AppColors.kWhiteColor,
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(16),
//                   ),
//                   child: Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: SingleChildScrollView(
//                       child: Form(
//                         key: _formkey,
//                         child: Column(
//                           children: [
//                            CustomTextFromField(labelText: "name",
//                           controller: name,
//                             keyboardType: TextInputType.name,
//                              suffIcvon: IconButton(onPressed: () {
//                                name.clear();
//
//                              },
//                                  icon:  Icon( Icons.account_circle_outlined)),
//                           ),
//
//                              SizedBox(height: 20,),
//                             CustomTextFromField(
//                               controller: phone,
//                               keyboardType: TextInputType.phone,
//                               labelText: 'Phone',
//                               suffIcvon: IconButton(onPressed: () {
//
//                               },
//                                   icon:  Icon( Icons.call)),
//
//                             ),
//
//                             const SizedBox(height: 20,),
//
//
//                             CustomTextFromField(
//
//                               controller: emailController,
//                               labelText: 'Email',
//                               keyboardType: TextInputType.emailAddress,
//                               suffIcvon: IconButton(onPressed: () {
//                               emailController.clear();
//                               },
//                                   icon:  Icon( Icons.email)),
//
//                             ),
//                             const SizedBox(height: 20,),
//
//                             CustomTextFromField(
//                               controller: passwordController,
//                               keyboardType: TextInputType.visiblePassword,
//                               secure: ispasswordhidden,
//                               suffIcvon: IconButton(onPressed: () {
//                                 setState(() {
//                                   ispasswordhidden = ! ispasswordhidden;
//                                 });
//                               },
//                                   icon:  Icon(ispasswordhidden?Icons.visibility: Icons.visibility_off)),
//                               labelText: 'password',
//
//                             ),
//                             const SizedBox(height: 20,),
//
//                             CustomTextFromField(labelText: "country",
//                             keyboardType: TextInputType.text,
//                               controller: country,
//                               suffIcvon: IconButton(onPressed: () {
//                                 country.clear();
//
//                               },
//                                   icon:  Icon(Icons.camera_outdoor)),
//
//                             ),
//                             const SizedBox(height: 20,),
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.end,
//                               children: [
//                                 CustomTextButton(text: "forgot password?",
//                                   onTap: () {
//                                     navigateTo(context,  ForgetViews());
//                                   },
//                                 )
//                               ],
//                             ),
//                             const SizedBox(height: 20,),
//                             CustomRowWithArrowbtn(
//                               text: "Login", onTap: () {navigateTo(context, LoginView());
//
//                             },),
//
//                             const SizedBox(height: 20),
//
//                             CustomRowWithArrowbtn(
//                               text: "Login with Google",
//                               onTap: () => (),
//
//
//                             ),
//                             const SizedBox(height: 20),
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: [
//                                 const Text(
//                                   'Dont Have an account?', style: TextStyle(
//                                     fontSize: 18,
//                                     fontWeight: FontWeight.bold
//                                 ),),
//
//                                 const SizedBox(width: 8,),
//                                 CustomTextButton(text: "Sign up", onTap: () {
//                                   navigateTo(context, const SignupView());
//                                 })
//                               ],
//                             ),
//
//
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
//
//                 ),
//                             ],
//                           ),
//               )),
//         );
//       }
//
//   }
//
//
// //smh?