import 'package:flutter/material.dart';
import 'package:our_market/cor/app_colors.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
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
                child: Icon(Icons.person,size: 35,),
              ),
              SizedBox(height: 16),
              Text(
                'User name',
                style: TextStyle( fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                ' User Email',
                style: TextStyle(),
              ),
              Card(
              color: AppColors.kPrimaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                  
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.person,color: AppColors.kWhiteColor,),

                      Text("Edit Name",style: TextStyle(color: AppColors.kWhiteColor),),
                      Icon(Icons.arrow_forward,color: AppColors.kWhiteColor)

                    ],
                  ),
                ),
              )





            ],
          ),
        ),
      ),

    );
  }
}
