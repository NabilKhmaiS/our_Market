import 'package:flutter/material.dart';
import 'package:our_market/cor/components/products-List.dart';

class FavoriteView extends StatelessWidget {
  const FavoriteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        children: [
          Center(
            child: Text("Yoyr favorite Products",style:
            TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
          ),
          SizedBox(height: 15,),
          Productslist()
        ],
      ),
    );
  }
}
