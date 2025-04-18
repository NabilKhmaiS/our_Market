import 'package:flutter/material.dart';
import 'package:our_market/cor/components/custom_search_field.dart';
import 'package:our_market/cor/components/products-List.dart';
import 'package:our_market/features/home/views/nav_bar/ui/home%20views/Category_list%20view.dart';
class HomeView extends StatelessWidget {
  const HomeView({super.key});
// const HomeView

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        children: [
          const CustomSearchField(),
          const SizedBox(
            height: 20,
          ),
          Image.asset("assets/images/buy.jpg"),
          const SizedBox(
            height: 15,
          ),
          const Text(
            "Popular Categories",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const CategoryListview(),
          const SizedBox(
            height: 15,
          ),
          const Text(
            "Recently Products",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
         const  SizedBox(height: 15,),
         const  Productslist(
         ),

        ],
      ),
    );
  }
}



