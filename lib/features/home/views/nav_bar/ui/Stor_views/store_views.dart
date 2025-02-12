import 'package:flutter/material.dart';
import 'package:our_market/cor/components/custom_search_field.dart';
import 'package:our_market/cor/components/products-List.dart';
import 'package:our_market/cor/components/slider_appbar.dart';

class StoreViews extends StatelessWidget {
  const StoreViews({super.key});

  @override
  Widget build(BuildContext context) {
    return
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
             const Center(
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: "W",
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    TextSpan(
                      text: "elcome to our ",
                      style: TextStyle(
                        color: Colors.black, //
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    TextSpan(
                      text: "Market",
                      style: TextStyle(
                        color: Colors.blue, //
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
             const SizedBox(height: 15,),
             const CustomSearchField(),
            const SizedBox(height: 15,),
            SliderScreen(),
             const SizedBox(height: 15,),
             const Productslist(),


          ],
        ),
      );

  }
}
