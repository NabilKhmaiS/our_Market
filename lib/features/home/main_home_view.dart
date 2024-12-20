import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:our_market/cor/app_colors.dart';
import 'package:our_market/features/home/views/nav_bar/ui/Profile%20views/Profile_view.dart';
import 'package:our_market/features/home/views/nav_bar/ui/Stor_views/store_views.dart';
import 'package:our_market/features/home/views/nav_bar/ui/favorite%20views/favorite_view.dart';
import 'package:our_market/features/home/views/nav_bar/ui/home%20views/home_view.dart';

class MainHomeView extends StatelessWidget {
   MainHomeView({super.key});

  final List<Widget> views = [
    HomeView(),
    StoreViews(),
    FavoriteView(),
    ProfileView(),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: views[2]),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: AppColors.kWhiteColor
        ),
        child: Padding(
          padding:  EdgeInsets.symmetric(vertical: 8,horizontal: 15),
          child: GNav(
            onTabChange: (value) {
              log(value.toString() as num);
            },

              rippleColor: AppColors.kPrimaryColor, // tab button ripple color when pressed
              hoverColor: AppColors.kPrimaryColor, // tab button hover color
              //haptic: true, // haptic feedback
              //tabBorderRadius: 15,
            //  tabShadow: [BoxShadow(color: Colors.grey.withOpacity(0.5), blurRadius: 8)], // tab button shadow
            //  curve: Curves.easeOutExpo, // tab animation curves
              duration: Duration(milliseconds: 400), // tab animation duration
              gap: 8, // the tab button gap between icon and text
              color: AppColors.kGreyColor, // unselected icon color
              activeColor: AppColors.kWhiteColor, // selected icon and text color
              iconSize: 24, // tab button icon size
              tabBackgroundColor: AppColors.kPrimaryColor, // selected tab background color
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12), // navigation bar padding
              tabs: [
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
                )
              ]
          ),
        ),
      ),
    );
  }
}
