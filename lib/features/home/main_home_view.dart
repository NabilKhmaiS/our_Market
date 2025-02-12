import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:our_market/cor/app_colors.dart';
import 'package:our_market/features/home/views/nav_bar/ui/Profile%20views/Profile_view.dart';
import 'package:our_market/features/home/views/nav_bar/ui/Stor_views/store_views.dart';
import 'package:our_market/features/home/views/nav_bar/ui/favorite%20views/favorite_view.dart';
import 'package:our_market/features/home/views/nav_bar/ui/home%20views/home_view.dart';
import 'views/nav_bar/logic/nev_bar_cubit.dart';

class MainHomeView extends StatelessWidget {
   MainHomeView({super.key});

  final List <Widget> views = [
    const HomeView (),
    const StoreViews (),
    const FavoriteView (),
    const ProfileView (),

  ];
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NevBarCubit(),
      child: BlocBuilder<NevBarCubit, NevBarState>(
    builder: (context, state) {
    NevBarCubit  cubit =  BlocProvider.of<NevBarCubit>(context);
    return Scaffold(
        body: SafeArea(child: views[cubit.currentIndex]),
        bottomNavigationBar: Container(
          decoration: const BoxDecoration(
            color: AppColors.kWhiteColor
          ),
          child: Padding(
            padding:  const EdgeInsets.symmetric(vertical: 8,horizontal: 15),
            child: GNav(
              onTabChange: (index) {
                cubit.ChangeCurrentIndex(index);
              },
      
                rippleColor: AppColors.kPrimaryColor, // tab button ripple color when pressed
                hoverColor: AppColors.kPrimaryColor, // tab button hover color
                //haptic: true, // haptic feedback
                //tabBorderRadius: 15,
              //  tabShadow: [BoxShadow(color: Colors.grey.withOpacity(0.5), blurRadius: 8)], // tab button shadow
              //  curve: Curves.easeOutExpo, // tab animation curves
                duration: const Duration(milliseconds: 400), // tab animation duration
                gap: 8, // the tab button gap between icon and text
                color: AppColors.kGreyColor, // unselected icon color
                activeColor: AppColors.kWhiteColor, // selected icon and text color
                iconSize: 24, // tab button icon size
                tabBackgroundColor: AppColors.kPrimaryColor, // selected tab background color
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12), // navigation bar padding
                tabs: const [
                  GButton(
                    icon: Icons.home,
                    text: 'Home',
                  ),
                  GButton(
                    icon: Icons.store,
                    text: 'Store',
                  ),
                  GButton(
                    icon: Icons.favorite,
                    text: 'Favorite',
                  ),
                  GButton(
                    icon: Icons.person,
                    text: 'Profile',
                  ),

                ],
            ),

          ),
        ),
      );
  },
),
    );
  }
}
