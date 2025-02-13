import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:our_market/cor/app_colors.dart';
import 'package:our_market/cor/components/custom_circularprogindicator.dart';
import 'package:our_market/cor/functions/navigate.dart';
import 'package:our_market/features/home/views/nav_bar/ui/Profile%20views/widgets/CustomRowBtn.dart';
import 'package:our_market/features/home/views/nav_bar/ui/Profile%20views/widgets/edit_name_view.dart';
import 'package:our_market/features/home/views/nav_bar/ui/Profile%20views/widgets/my_orders.dart';
import 'package:our_market/features/logic/cubit/authentication_cubit.dart';
import 'package:our_market/features/logic/modal/user_modals.dart';
import 'package:our_market/features/ui/login_views/login_view.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});
  final double margin = 24;
  final double radius = 50;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthenticationCubit, AuthenticationState>(

        listener: (context, state) {
      if (state is LogoutSuccess) {
       Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const LoginView(),));
      }
    },
    builder: (context, state) {
      UserDataModal? user = context.read<AuthenticationCubit>().userDateModel;

    return state is LogoutLoading ? const CustomCircularprogindicator(): Center(
      child: SizedBox(
        height: MediaQuery
            .sizeOf(context)
            .height *.65,
        child: Card(
          margin:  EdgeInsets.all(margin.toDouble()),
          color: AppColors.kWhiteColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                   CircleAvatar(
                    radius: radius.toDouble(),
                    backgroundColor: AppColors.kPrimaryColor,
                    foregroundColor: AppColors.kWhiteColor,
                    child: Icon(Icons.person, size: 35,),
                  ),
                  const SizedBox(height: 16),
                   Text(
                    user?.name ??'User name',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                   Text(
                   user?.email ??' User Email',
                    style:  TextStyle(),
                  ),
                  const SizedBox(height: 10,),
                  CustomRowBtn(
                    onTap: () {navigateTo(context, const EditNameView());},
                    icon: Icons.person,
                    label: 'Edit Profile',


                  ),
                  const SizedBox(height: 10,),
                  CustomRowBtn(
                    onTap: () {navigateTo(context, const MyOrders());},
                    icon: Icons.shopping_basket,
                    label: 'My Orders',),
                  const SizedBox(height: 10,),
                  CustomRowBtn(
                    onTap: ()async {
                  await context.read<AuthenticationCubit>().signOut();
                    },
                    icon: Icons.logout,
                    label: 'Logout',)


                ],
              ),
            ),
          ),

        ),
      ),
    );
  }
    );
  }


}
