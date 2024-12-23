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
          Image.asset("assets/images/buy.jpg")

        ],
      ),
    );
  }
}
