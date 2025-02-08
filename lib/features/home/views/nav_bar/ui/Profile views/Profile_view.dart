import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:our_market/cor/app_colors.dart';
import 'package:our_market/cor/components/custom_circularprogindicator.dart';
import 'package:our_market/cor/functions/navigate.dart';
import 'package:our_market/features/home/main_home_view.dart';
import 'package:our_market/features/home/views/nav_bar/ui/Profile%20views/widgets/CustomRowBtn.dart';
import 'package:our_market/features/home/views/nav_bar/ui/Profile%20views/widgets/edit_name_view.dart';
import 'package:our_market/features/home/views/nav_bar/ui/Profile%20views/widgets/my_orders.dart';
import 'package:our_market/features/logic/cubit/authentication_cubit.dart';
import 'package:our_market/features/ui/login_views/login_view.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthenticationCubit, AuthenticationState>(

        listener: (context, state) {
      if (state is LogoutSuccess) {
       Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginView(),));
      }
    },
    builder: (context, state) {




    return state is LogoutLoading? CustomCircularprogindicator(): Center(
      child: SizedBox(
        height: MediaQuery
            .sizeOf(context)
            .height * .65,
        child: Card(
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
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: AppColors.kPrimaryColor,
                    foregroundColor: AppColors.kWhiteColor,
                    child: Icon(Icons.person, size: 35,),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'User name',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text(
                    ' User Email',
                    style: TextStyle(),
                  ),
                  SizedBox(height: 10,),
                  CustomRowBtn(
                    onTap: () {navigateTo(context, EditNameView());},
                    icon: Icons.person,
                    label: 'Edit Profile',


                  ),
                  SizedBox(height: 10,),
                  CustomRowBtn(
                    onTap: () {navigateTo(context, MyOrders());},
                    icon: Icons.shopping_basket,
                    label: 'My Orders',),
                  SizedBox(height: 10,),
                  CustomRowBtn(
                    onTap: ()async {


                  await context.read<AuthenticationCubit>().signOut();
                    },
                    icon: Icons.logout,
                    label: 'Logout',),


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
