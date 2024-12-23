import 'package:flutter/material.dart';
import 'package:our_market/cor/app_colors.dart';
import 'package:our_market/cor/components/custom_search_field.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        children: [
              CustomSearchField(),
          SizedBox(height: 20,),
          Image.asset("assets/images/buy.jpg"),
          SizedBox(height: 15,),
          Text("Popular Categories",style: TextStyle(
            fontSize: 20,
          ),),
          SizedBox(height: 15,),
          SizedBox(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: getCategories.length,itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: AppColors.kPrimaryColor,
                      foregroundColor: AppColors.kWhiteColor,
                      child: Icon(getCategories[index].icon,size: 40,),

                    ),
                    Text(getCategories[index].text),
                  ],
                ),

              );

            },),

          )


        ],
      ),
    );
  }
}



List<Category> getCategories =[
  Category(icon: Icons.sports, text: "Sports"),
  Category(icon: Icons.tv, text: "Electronic"),
  Category(icon: Icons.collections, text: "Collections"),
  Category(icon: Icons.book, text: "Books"),
  Category(icon: Icons.games, text: "Games"),
  Category(icon: Icons.local_mall, text: "Malls"),
  Category(icon: Icons.local_shipping, text: "Shipping"),
  Category(icon: Icons.local_atm, text: "ATM"),
  Category(icon: Icons.local_gas_station, text: "Gas Station"),
  Category(icon: Icons.local_hospital, text: "Hospital"),
  Category(icon: Icons.local_grocery_store, text: "Groceries"),
  Category(icon: Icons.bike_scooter, text: "Bikescooter"),
  Category(icon: Icons.local_restaurant, text: "Restaurant"),
  Category(icon: Icons.local_cafe, text: "Cafe"),
  Category(icon: Icons.local_parking, text: "Parking"),

];

class Category {
  final IconData icon;
  final String text;

  Category({required this.icon, required this.text});
}
