import 'package:flutter/material.dart';
import 'package:our_market/cor/components/ProductCard.dart';

class Productslist extends StatelessWidget {
  const Productslist({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: 10,itemBuilder: (context, index) {
      return  Productcard();
    },);
  }
}
