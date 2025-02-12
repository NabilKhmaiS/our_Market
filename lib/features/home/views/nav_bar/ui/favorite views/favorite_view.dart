import 'package:flutter/material.dart';
import 'package:our_market/cor/components/products-List.dart';

class FavoriteView extends StatelessWidget {
  const FavoriteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        children: const [
          Center(
            child:
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: "Y",
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  TextSpan(
                    text: "ouer ",
                    style: TextStyle(
                      color: Colors.black, //
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  TextSpan(
                    text: "Favorites",
                    style: TextStyle(
                      //color: Colors.blue, //
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  TextSpan(
                    text: "Products",
                    style: TextStyle(
                      fontSize: 25,
                     // color: Colors.blue, //
                      fontWeight: FontWeight.bold,
                    )),
                  TextSpan(
                    text: "S",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue, //
                    )),
                ],

              ),
            ),
          ),
          SizedBox(height: 15,),
          Productslist()
        ],
      ),
    );
  }
}
