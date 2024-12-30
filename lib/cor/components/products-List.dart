import 'package:flutter/material.dart';
import 'package:our_market/cor/components/ProductCard.dart';

class Productslist extends StatelessWidget {
  const Productslist({super.key,  this.shrinkWrap, this.physics,});

  final bool? shrinkWrap;
  final ScrollPhysics? physics;
  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
      shrinkWrap: shrinkWrap ?? true,
      physics:physics?? NeverScrollableScrollPhysics(),
      itemCount: 10,itemBuilder: (context, index) {
      return  Productcard();
    },);
  }
}
//34
