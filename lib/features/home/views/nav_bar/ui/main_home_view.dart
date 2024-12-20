import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:our_market/cor/app_colors.dart';

class MainHomeView extends StatelessWidget {
  const MainHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Text('test'),
        ),
      )),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: AppColors.kWhiteColor
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 15),
          child: GNav(
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
