import 'package:flutter/material.dart';
import 'package:our_market/cor/components/custom_search_field.dart';
import 'package:our_market/cor/components/products-List.dart';

class StoreViews extends StatelessWidget {
  const StoreViews({super.key});

  @override
  Widget build(BuildContext context) {
    return
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Center(
              child: Text("Welcome to our Market",style:
                TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            ),
            SizedBox(height: 15,),
            CustomSearchField(),
            SizedBox(height: 15,),
            Productslist(),


          ],
        ),
      );

  }
}
