import 'package:flutter/material.dart';
import 'package:our_market/cor/components/products-List.dart';
import 'package:our_market/cor/functions/buildAppBar.dart';

class MyOrders extends StatelessWidget {
  const MyOrders({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, 'MyOrders'),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Productslist(
          shrinkWrap: false,
          physics: BouncingScrollPhysics(),
        ),
      ),
    );


  }
}
